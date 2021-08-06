using System.Collections.Generic;

namespace QueryWizard.Domain
{
    public class QueryBatch
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public List<QueryElement> Sources { get; set; }

        public List<Query> Queries { get; set; }

        public Dictionary<string, Dictionary<string, string>> Aliases { get; set; }

        public QueryType QueryType { get; set; }

        public string TempTableName { get; set; }
    }
}
