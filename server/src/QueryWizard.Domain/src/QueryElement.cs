using System.Collections.Generic;

namespace QueryWizard.Domain
{
    public class QueryElement
    {
        public string Id { get; set; }

        public string Name { get; set; }

        public string Alias { get; set; }

        public QueryElementType Type { get; set; }

        public QueryElement Parent { get; set; }

        public List<QueryElement> Elements { get; set; }
    }
}
