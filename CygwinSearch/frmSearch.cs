using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using System.Configuration;
using CygwinSearch.Model;
using CygwinSearch.Helper;
using System.IO;
using System.Diagnostics;
using System.Text;

namespace CygwinSearch
{
    public partial class frmSearch : Form
    {
        CygwinModel cygwinmodel;
        List<ScriptParameter> sp;
        string args;
        StringBuilder sbresult = new StringBuilder();
        StringBuilder sberror = new StringBuilder();
        Process oProcess;
        string outputFile;
        string dquotes = "\"";
        public frmSearch()
        {
            InitializeComponent();
        }

        private void frmSearch_Load(object sender, EventArgs e)
        {

            panel2.Dock = DockStyle.Fill;
            panel1.Visible = false;
            string scriptxmlpath = ConfigurationManager.AppSettings["scriptxmlpath"].ToString();
            txtCygwinPath.Text = ConfigurationManager.AppSettings["cygwinpath"].ToString();
            txtCodePath.Text = ConfigurationManager.AppSettings["codepath"].ToString();
            txtScriptPath.Text = ConfigurationManager.AppSettings["scriptshellpath"].ToString();
            txtEditorPath.Text = ConfigurationManager.AppSettings["editorpath"].ToString();
            cygwinmodel = CygwinHelper.GetScriptDetails(scriptxmlpath);

            //cmbscript.Text = "findInJava";
            //txtparam1.Text = "member";
            //txtparam2.Text = "member";
            foreach (ScriptCommand cmd in cygwinmodel.commands)
            {
                cmbscript.Items.Add(cmd.name);
            }

            if (ConfigurationManager.AppSettings["firsttime"] == "1")
            {
                MessageBox.Show("Set configuration setting on first run");
                CygwinHelper.WriteAppsettingToConfig("firsttime", "0");
                cygwinConfigToolStripMenuItem_Click(new object(), new EventArgs());
            }
        }

        private void HideControls()
        {
            lblParam1.Visible = false;
            lblParam2.Visible = false;
            txtparam1.Visible = false;
            txtparam2.Visible = false;
            btnExecute.Visible = false;

        }

        private void cmbscript_SelectedIndexChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
            HideControls();
            args = string.Empty;
            if (cmbscript.SelectedIndex > -1)
            {
                sp = cygwinmodel.commands.Find(i => i.name == cmbscript.Text).parameters;

                int lblCount = 0;
                foreach (ScriptParameter p in sp)
                {
                    lblCount++;
                    string Lblctrl = "lblParam" + lblCount.ToString();
                    string txtctrl = "txtparam" + lblCount.ToString();
                    this.panel2.Controls[Lblctrl].Text = p.name;
                    this.panel2.Controls[Lblctrl].Visible = true;
                    this.panel2.Controls[txtctrl].Visible = true;
                    this.panel2.Controls[txtctrl].Text = string.Empty;
                    
                }
                btnExecute.Visible = true;
            }

        }



        private void btnExecute_Click(object sender, EventArgs e)
        {
            try
            {
                
                string basedir = AppDomain.CurrentDomain.BaseDirectory;
                string bashfile = string.Format(@"{2}{0}\{1}{2}", txtCygwinPath.Text, "bash.exe",dquotes);
                string resdir = string.Format(@"{0}{1}", basedir, @"results");
                string batfile = string.Format(@"{0}{1}", basedir, @"bat\bashexecute.bat");
                if (Path.GetDirectoryName(txtScriptPath.Text) == string.Empty)
                {
                    txtScriptPath.Text = string.Format(@"{0}{1}", basedir, txtScriptPath.Text);
                }
                string scriptfile = string.Format(@"{2}{0}\{1}.sh{2}", txtScriptPath.Text, cmbscript.Text,dquotes);
                string filecontent;
                if (validateControls())
                {
                    errorProvider1.Clear();
                    txtResult.Text = "";
                    outputFile = string.Format(@"{2}{0}\{1}{2}", resdir, "temp.res",dquotes);
                    string args = string.Empty;
                    if (txtparam1.Visible && txtparam2.Visible)
                    {
                        args = string.Format("{0} \"{1}\"", txtparam1.Text, txtparam2.Text);
                    }
                    else if (txtparam1.Visible)
                    {
                        args = txtparam1.Text;
                    }
                   
                    filecontent = File.ReadAllText(batfile);
                    filecontent = string.Format(filecontent,string.Format("{1}{0}{1}",txtCygwinPath.Text,dquotes), string.Format("{1}{0}{1}",txtCodePath.Text,dquotes), scriptfile, args, string.Format(@"{0}\{1}", resdir, "temp.res"));
                    batfile = batfile.Replace(".", "temp.");
                    File.WriteAllText(batfile, filecontent);
                    //FileSystemWatcher fsw = new FileSystemWatcher(resdir);
                    //fsw.Filter = "*.res";
                    //fsw.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite | NotifyFilters.FileName | NotifyFilters.DirectoryName;
                    //fsw.IncludeSubdirectories = true;
                    //fsw.Changed += new FileSystemEventHandler(fsw_Changed);
                    //fsw.Created += new FileSystemEventHandler(fsw_Changed);
                    //fsw.EnableRaisingEvents = true;
                    //Disablecontrols(false);
                    ExecuteBashProcess(batfile);
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void Disablecontrols(bool status)
        {
            btnExecute.Enabled = status;
            btnClear.Enabled = status;
            btnSave.Enabled = status;
            btnExit.Enabled = status;
        }

        private void ExecuteBashProcess(string filename)
        {
            sberror.Length = 0;
            sbresult.Length = 0;
            ProcessStartInfo psi = new ProcessStartInfo();
            psi.UseShellExecute = false;
            psi.WindowStyle = ProcessWindowStyle.Hidden;
            psi.FileName = filename;
            psi.CreateNoWindow = true;
            psi.RedirectStandardOutput = true;
            psi.RedirectStandardError = true;
            using (oProcess = Process.Start(psi))
            {
                oProcess.ErrorDataReceived += oProcess_OutputDataReceived;
                oProcess.BeginErrorReadLine();
                oProcess.OutputDataReceived += oProcess_OutputDataReceived;
                oProcess.BeginOutputReadLine();
                //oProcess.WaitForExit();
            }

        }
        void oProcess_OutputDataReceived(object sender, DataReceivedEventArgs e)
        {
            sbresult.AppendLine(e.Data);
            SetText(sbresult.ToString());
        }



        void fsw_Changed(object sender, FileSystemEventArgs e)
        {
            if (e.ChangeType == WatcherChangeTypes.Changed || e.ChangeType == WatcherChangeTypes.Created)
            {
                string content = CygwinHelper.OpenFileSharedMode(e.FullPath);
                SetText(content);
            }
        }
        delegate void SetTextCallback(string text);

        private void SetText(string text)
        {

            if (this.txtResult.InvokeRequired)
            {
                SetTextCallback d = new SetTextCallback(SetText);
                this.Invoke(d, new object[] { text });
            }
            else
            {
                txtResult.Text = "";
                this.txtResult.Text = text;
                txtResult.Select(txtResult.TextLength, 0);
                txtResult.Focus();

            }
        }
        private bool validateControls()
        {
            errorProvider1.Clear();
            bool valres = true;
            int lblCount = 0;
            foreach (ScriptParameter sptemp in sp)
            {
                lblCount++;
                string Lblctrl = "lblParam" + lblCount.ToString();
                string txtctrl = "txtparam" + lblCount.ToString();
                if (sptemp.required && this.panel2.Controls[txtctrl].Text == string.Empty)
                {
                    errorProvider1.SetError(this.panel2.Controls[txtctrl], "Values is required");
                    valres = false;
                }
            }

            return valres;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtResult.Text = "";
        }

        private void cygwinSearchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel1.Visible = false;
            panel2.Visible = true;
        }

        private void cygwinConfigToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
            panel2.Visible = false;
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btncygpath_Click(object sender, EventArgs e)
        {
            GetFolderBrowserPath(txtCygwinPath);

        }



        private void btncodepath_Click(object sender, EventArgs e)
        {
            GetFolderBrowserPath(txtCodePath);

        }



        private void btnscriptpath_Click(object sender, EventArgs e)
        {
            GetFolderBrowserPath(txtScriptPath);
        }
        private void btnEditorPath_Click(object sender, EventArgs e)
        {
            GetFolderBrowserPath(txtEditorPath);
        }

        private void GetFolderBrowserPath(TextBox tbox)
        {

            folderBrowserDialog1.ShowNewFolderButton = true;
            folderBrowserDialog1.SelectedPath = tbox.Text;
            DialogResult dlgresult = folderBrowserDialog1.ShowDialog();
            if (dlgresult == DialogResult.OK)
            {
                tbox.Text = folderBrowserDialog1.SelectedPath;
                CygwinHelper.WriteAppsettingToConfig(tbox.Tag.ToString(), tbox.Text);
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtResult_DoubleClick(object sender, EventArgs e)
        {
            int textLineNo, lineNo, templineNo, initpos;
            string templine, fileName;


            try
            {
                initpos = txtResult.GetFirstCharIndexOfCurrentLine();
                templineNo = txtResult.GetLineFromCharIndex(initpos);
                templine = txtResult.Lines[templineNo];
                templine = templine.Substring(0, templine.IndexOf(":"));
                lineNo = Convert.ToInt32(templine); // line No. of the selected text
                textLineNo = txtResult.Find("-- File Name", 0, initpos, RichTextBoxFinds.Reverse);
                txtResult.Select(textLineNo, 1);
                textLineNo = txtResult.GetLineFromCharIndex(txtResult.GetFirstCharIndexOfCurrentLine());
                templine = txtResult.Lines[textLineNo];
                fileName = templine.Substring(templine.IndexOf(".") + 1); //file name
                //MessageBox.Show(fileName);
                CygwinHelper.ExecuteProcess(txtEditorPath.Text, string.Format(@"{3}{0}{1}{3} -n{2}", txtCodePath.Text, fileName.Replace(@"/", @"\"), lineNo,dquotes));
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }


        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {


                if (txtResult.Text.Trim() != string.Empty)
                {
                    saveFileDialog1.ShowDialog();
                }
                else
                {
                    MessageBox.Show("No content to save.");
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void saveFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
            File.WriteAllText(saveFileDialog1.FileName, txtResult.Text);
            //txtResult.SaveFile(saveFileDialog1.FileName);
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            try
            {
                cmbscript.SelectedIndex = -1;
                openFileDialog1.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                openFileDialog1.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
            txtResult.Text = CygwinHelper.OpenFileSharedMode(openFileDialog1.FileName);
        }

        

        




    }
    
}
