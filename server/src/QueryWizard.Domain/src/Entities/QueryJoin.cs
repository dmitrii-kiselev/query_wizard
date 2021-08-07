namespace QueryWizard.Domain.Entities
{
    public class QueryJoin
    {
        public string Id { get; set; }

        public QueryElement LeftTable { get; set; }

        public bool IsLeftAll { get; set; }

        public QueryElement RightTable { get; set; }

        public bool IsRightAll { get; set; }

        public QueryCondition Condition { get; set; }
    }
}
