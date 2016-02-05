namespace CygwinSearch
{
    partial class frmSearch
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;


        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSearch));
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnEditorPath = new System.Windows.Forms.Button();
            this.txtEditorPath = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnscriptpath = new System.Windows.Forms.Button();
            this.btncodepath = new System.Windows.Forms.Button();
            this.btncygpath = new System.Windows.Forms.Button();
            this.txtScriptPath = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCodePath = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtCygwinPath = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnLoad = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.txtLoad = new System.Windows.Forms.TextBox();
            this.txtResult = new System.Windows.Forms.RichTextBox();
            this.btnExecute = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.cmbscript = new System.Windows.Forms.ComboBox();
            this.lblParam2 = new System.Windows.Forms.Label();
            this.txtparam2 = new System.Windows.Forms.TextBox();
            this.lblParam1 = new System.Windows.Forms.Label();
            this.txtparam1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.configurationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cygwinSearchToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cygwinConfigToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnEditorPath);
            this.panel1.Controls.Add(this.txtEditorPath);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.btnscriptpath);
            this.panel1.Controls.Add(this.btncodepath);
            this.panel1.Controls.Add(this.btncygpath);
            this.panel1.Controls.Add(this.txtScriptPath);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.txtCodePath);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.txtCygwinPath);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Location = new System.Drawing.Point(93, 36);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(352, 169);
            this.panel1.TabIndex = 17;
            // 
            // btnEditorPath
            // 
            this.btnEditorPath.Location = new System.Drawing.Point(305, 131);
            this.btnEditorPath.Name = "btnEditorPath";
            this.btnEditorPath.Size = new System.Drawing.Size(31, 23);
            this.btnEditorPath.TabIndex = 15;
            this.btnEditorPath.Text = "...";
            this.btnEditorPath.UseVisualStyleBackColor = true;
            this.btnEditorPath.Click += new System.EventHandler(this.btnEditorPath_Click);
            // 
            // txtEditorPath
            // 
            this.txtEditorPath.Enabled = false;
            this.txtEditorPath.Location = new System.Drawing.Point(111, 133);
            this.txtEditorPath.Name = "txtEditorPath";
            this.txtEditorPath.Size = new System.Drawing.Size(188, 20);
            this.txtEditorPath.TabIndex = 14;
            this.txtEditorPath.Tag = "editorpath";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(11, 136);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(85, 13);
            this.label5.TabIndex = 18;
            this.label5.Text = "Notepad++ Path";
            // 
            // btnscriptpath
            // 
            this.btnscriptpath.Location = new System.Drawing.Point(305, 96);
            this.btnscriptpath.Name = "btnscriptpath";
            this.btnscriptpath.Size = new System.Drawing.Size(31, 23);
            this.btnscriptpath.TabIndex = 13;
            this.btnscriptpath.Text = "...";
            this.btnscriptpath.UseVisualStyleBackColor = true;
            this.btnscriptpath.Click += new System.EventHandler(this.btnscriptpath_Click);
            // 
            // btncodepath
            // 
            this.btncodepath.Location = new System.Drawing.Point(305, 58);
            this.btncodepath.Name = "btncodepath";
            this.btncodepath.Size = new System.Drawing.Size(31, 23);
            this.btncodepath.TabIndex = 11;
            this.btncodepath.Text = "...";
            this.btncodepath.UseVisualStyleBackColor = true;
            this.btncodepath.Click += new System.EventHandler(this.btncodepath_Click);
            // 
            // btncygpath
            // 
            this.btncygpath.Location = new System.Drawing.Point(305, 18);
            this.btncygpath.Name = "btncygpath";
            this.btncygpath.Size = new System.Drawing.Size(31, 23);
            this.btncygpath.TabIndex = 9;
            this.btncygpath.Text = "...";
            this.btncygpath.UseVisualStyleBackColor = true;
            this.btncygpath.Click += new System.EventHandler(this.btncygpath_Click);
            // 
            // txtScriptPath
            // 
            this.txtScriptPath.Enabled = false;
            this.txtScriptPath.Location = new System.Drawing.Point(111, 98);
            this.txtScriptPath.Name = "txtScriptPath";
            this.txtScriptPath.Size = new System.Drawing.Size(188, 20);
            this.txtScriptPath.TabIndex = 12;
            this.txtScriptPath.Tag = "scriptshellpath";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 101);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 13);
            this.label3.TabIndex = 13;
            this.label3.Text = "Shell Script Path";
            // 
            // txtCodePath
            // 
            this.txtCodePath.Enabled = false;
            this.txtCodePath.Location = new System.Drawing.Point(111, 61);
            this.txtCodePath.Name = "txtCodePath";
            this.txtCodePath.Size = new System.Drawing.Size(188, 20);
            this.txtCodePath.TabIndex = 10;
            this.txtCodePath.Tag = "codepath";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Source code Path";
            // 
            // txtCygwinPath
            // 
            this.txtCygwinPath.Enabled = false;
            this.txtCygwinPath.Location = new System.Drawing.Point(111, 20);
            this.txtCygwinPath.Name = "txtCygwinPath";
            this.txtCygwinPath.Size = new System.Drawing.Size(188, 20);
            this.txtCygwinPath.TabIndex = 8;
            this.txtCygwinPath.Tag = "cygwinpath";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(11, 23);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Cygwin Path";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnLoad);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtLoad);
            this.panel2.Controls.Add(this.txtResult);
            this.panel2.Controls.Add(this.btnExecute);
            this.panel2.Controls.Add(this.btnExit);
            this.panel2.Controls.Add(this.btnClear);
            this.panel2.Controls.Add(this.btnSave);
            this.panel2.Controls.Add(this.cmbscript);
            this.panel2.Controls.Add(this.lblParam2);
            this.panel2.Controls.Add(this.txtparam2);
            this.panel2.Controls.Add(this.lblParam1);
            this.panel2.Controls.Add(this.txtparam1);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Location = new System.Drawing.Point(12, 239);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(544, 460);
            this.panel2.TabIndex = 18;
            // 
            // btnLoad
            // 
            this.btnLoad.Location = new System.Drawing.Point(506, 18);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(26, 23);
            this.btnLoad.TabIndex = 30;
            this.btnLoad.Text = "...";
            this.btnLoad.UseVisualStyleBackColor = true;
            this.btnLoad.Click += new System.EventHandler(this.btnLoad_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(290, 21);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(84, 13);
            this.label6.TabIndex = 29;
            this.label6.Text = "Load Saved File";
            // 
            // txtLoad
            // 
            this.txtLoad.Enabled = false;
            this.txtLoad.Location = new System.Drawing.Point(384, 18);
            this.txtLoad.Name = "txtLoad";
            this.txtLoad.Size = new System.Drawing.Size(121, 20);
            this.txtLoad.TabIndex = 28;
            // 
            // txtResult
            // 
            this.txtResult.Location = new System.Drawing.Point(40, 138);
            this.txtResult.Name = "txtResult";
            this.txtResult.Size = new System.Drawing.Size(479, 264);
            this.txtResult.TabIndex = 27;
            this.txtResult.Text = "";
            this.txtResult.WordWrap = false;
            this.txtResult.DoubleClick += new System.EventHandler(this.txtResult_DoubleClick);
            // 
            // btnExecute
            // 
            this.btnExecute.Location = new System.Drawing.Point(394, 93);
            this.btnExecute.Name = "btnExecute";
            this.btnExecute.Size = new System.Drawing.Size(111, 23);
            this.btnExecute.TabIndex = 24;
            this.btnExecute.Text = "E&xecute";
            this.btnExecute.UseVisualStyleBackColor = true;
            this.btnExecute.Visible = false;
            this.btnExecute.Click += new System.EventHandler(this.btnExecute_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(448, 422);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(57, 23);
            this.btnExit.TabIndex = 27;
            this.btnExit.Text = "E&xit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(131, 422);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(57, 23);
            this.btnClear.TabIndex = 26;
            this.btnClear.Text = "&Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(51, 422);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(57, 23);
            this.btnSave.TabIndex = 25;
            this.btnSave.Text = "&Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cmbscript
            // 
            this.cmbscript.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cmbscript.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cmbscript.FormattingEnabled = true;
            this.cmbscript.Location = new System.Drawing.Point(131, 18);
            this.cmbscript.Name = "cmbscript";
            this.cmbscript.Size = new System.Drawing.Size(121, 21);
            this.cmbscript.TabIndex = 21;
            this.cmbscript.SelectedIndexChanged += new System.EventHandler(this.cmbscript_SelectedIndexChanged);
            // 
            // lblParam2
            // 
            this.lblParam2.AutoSize = true;
            this.lblParam2.Location = new System.Drawing.Point(37, 98);
            this.lblParam2.Name = "lblParam2";
            this.lblParam2.Size = new System.Drawing.Size(43, 13);
            this.lblParam2.TabIndex = 20;
            this.lblParam2.Text = "Param2";
            this.lblParam2.Visible = false;
            // 
            // txtparam2
            // 
            this.txtparam2.Location = new System.Drawing.Point(131, 95);
            this.txtparam2.Name = "txtparam2";
            this.txtparam2.Size = new System.Drawing.Size(121, 20);
            this.txtparam2.TabIndex = 23;
            this.txtparam2.Visible = false;
            // 
            // lblParam1
            // 
            this.lblParam1.AutoSize = true;
            this.lblParam1.Location = new System.Drawing.Point(37, 57);
            this.lblParam1.Name = "lblParam1";
            this.lblParam1.Size = new System.Drawing.Size(43, 13);
            this.lblParam1.TabIndex = 18;
            this.lblParam1.Text = "Param1";
            this.lblParam1.Visible = false;
            // 
            // txtparam1
            // 
            this.txtparam1.Location = new System.Drawing.Point(131, 54);
            this.txtparam1.Name = "txtparam1";
            this.txtparam1.Size = new System.Drawing.Size(121, 20);
            this.txtparam1.TabIndex = 22;
            this.txtparam1.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(37, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(83, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Select the script";
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.configurationToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(556, 24);
            this.menuStrip1.TabIndex = 19;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(35, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(92, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // configurationToolStripMenuItem
            // 
            this.configurationToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cygwinSearchToolStripMenuItem,
            this.cygwinConfigToolStripMenuItem});
            this.configurationToolStripMenuItem.Name = "configurationToolStripMenuItem";
            this.configurationToolStripMenuItem.Size = new System.Drawing.Size(44, 20);
            this.configurationToolStripMenuItem.Text = "Tools";
            // 
            // cygwinSearchToolStripMenuItem
            // 
            this.cygwinSearchToolStripMenuItem.Name = "cygwinSearchToolStripMenuItem";
            this.cygwinSearchToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.cygwinSearchToolStripMenuItem.Text = "CygwinSearch";
            this.cygwinSearchToolStripMenuItem.Click += new System.EventHandler(this.cygwinSearchToolStripMenuItem_Click);
            // 
            // cygwinConfigToolStripMenuItem
            // 
            this.cygwinConfigToolStripMenuItem.Name = "cygwinConfigToolStripMenuItem";
            this.cygwinConfigToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.cygwinConfigToolStripMenuItem.Text = "CygwinConfig";
            this.cygwinConfigToolStripMenuItem.Click += new System.EventHandler(this.cygwinConfigToolStripMenuItem_Click);
            // 
            // saveFileDialog1
            // 
            this.saveFileDialog1.FileOk += new System.ComponentModel.CancelEventHandler(this.saveFileDialog1_FileOk);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileOk += new System.ComponentModel.CancelEventHandler(this.openFileDialog1_FileOk);
            // 
            // frmSearch
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(556, 486);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "frmSearch";
            this.Text = "Cygwin Search";
            this.Load += new System.EventHandler(this.frmSearch_Load);
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnExecute;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cmbscript;
        private System.Windows.Forms.Label lblParam2;
        private System.Windows.Forms.TextBox txtparam2;
        private System.Windows.Forms.Label lblParam1;
        private System.Windows.Forms.TextBox txtparam1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnscriptpath;
        private System.Windows.Forms.Button btncodepath;
        private System.Windows.Forms.Button btncygpath;
        private System.Windows.Forms.TextBox txtScriptPath;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCodePath;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtCygwinPath;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem configurationToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cygwinSearchToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cygwinConfigToolStripMenuItem;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
        private System.Windows.Forms.RichTextBox txtResult;
        private System.Windows.Forms.Button btnEditorPath;
        private System.Windows.Forms.TextBox txtEditorPath;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.Button btnLoad;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtLoad;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
    }
}

