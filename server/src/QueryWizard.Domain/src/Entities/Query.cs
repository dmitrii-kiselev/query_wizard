using System.Collections.Generic;

namespace QueryWizard.Domain.Entities
{
    public class Query
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public List<QueryElement> Sources { get; set; }

        public List<QueryElement> Tables { get; set; }

        public List<QueryElement> Fields { get; set; }

        public List<QueryJoin> Joins { get; set; }

        public List<QueryGrouping> Groupings { get; set; }

        public List<QueryAggregate> Aggregates { get; set; }

        public List<QueryCondition> Conditions { get; set; }

        public List<QueryOrder> Orders { get; set; }

        public bool IsTop { get; set; }

        public int TopCounter { get; set; }

        public bool IsDistinct { get; set; }
    }
}
