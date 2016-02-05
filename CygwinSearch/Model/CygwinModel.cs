using System.Collections.Generic;

namespace CygwinSearch.Model
{
    public class CygwinModel
    {
        public List<ScriptCommand> commands;
    }

    public class ScriptCommand
    {
        public string name;
        public List<ScriptParameter> parameters;
    }
    public class ScriptParameter
    {
        public string name;
        public bool required;
        public bool includeQuotes;
    }
}
