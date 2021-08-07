using System.Collections.Generic;
using QueryWizard.Domain.Enums;

namespace QueryWizard.Domain.Entities
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
