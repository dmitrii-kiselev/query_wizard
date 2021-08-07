using QueryWizard.Domain.Enums;

namespace QueryWizard.Domain.Entities
{
    public class QueryCondition
    {
        public string Id { get; set; }

        public bool IsCustom { get; set; }

        public QueryElement LeftField { get; set; }

        public LogicalCompareType LogicalCompareType { get; set; }

        public QueryElement RightField { get; set; }

        public string CustomCondition { get; set; }
    }
}
