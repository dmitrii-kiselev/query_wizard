using QueryWizard.Domain.Enums;

namespace QueryWizard.Domain.Entities
{
    public class QueryOrder
    {
        public string Id { get; set; }

        public QueryElement Field { get; set; }

        public QuerySortingType Type { get; set; }
    }
}
