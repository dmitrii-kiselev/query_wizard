using System.Collections.Generic;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Enums;

namespace QueryWizard.Domain.Entities
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
