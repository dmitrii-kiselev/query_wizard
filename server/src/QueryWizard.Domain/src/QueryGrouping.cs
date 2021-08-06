using System.Collections.Generic;

namespace QueryWizard.Domain
{
    public class QueryGrouping
    {
        public string Id { get; set; }

        public QueryElement Field { get; set; }

        public QueryGroupingType Type { get; set; }

        public QueryGrouping Parent { get; set; }

        public List<QueryGrouping> Elements { get; set; }
    }
}
