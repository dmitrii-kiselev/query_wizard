namespace QueryWizard.Domain
{
    public class QueryOrder
    {
        public string Id { get; set; }

        public QueryElement Field { get; set; }

        public QuerySortingType Type { get; set; }
    }
}
