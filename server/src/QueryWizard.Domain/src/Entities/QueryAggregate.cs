﻿namespace QueryWizard.Domain.Entities
{
    public class QueryAggregate
    {
        public string Id { get; set; }

        public QueryElement Field { get; set; }

        public QueryAggregateFunction Function { get; set; }
    }
}