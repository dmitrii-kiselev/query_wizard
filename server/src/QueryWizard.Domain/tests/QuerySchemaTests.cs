using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QuerySchemaTests
    {
        private readonly Fixture _fixture;

        public QuerySchemaTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_QueryBatches_Equals()
        {
            // Arrange and Act
            var batches = new List<QueryBatch>();
            var schema = new QuerySchema { QueryBatches = batches };

            // Assert
            schema.QueryBatches.Should().AllBeEquivalentTo(batches);
        }
    }
}
