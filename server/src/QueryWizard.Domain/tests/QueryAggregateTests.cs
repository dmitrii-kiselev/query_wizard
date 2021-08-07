using AutoFixture;
using FluentAssertions;
using QueryWizard.Domain.Entities;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryAggregateTests
    {
        private readonly Fixture _fixture;

        public QueryAggregateTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var aggregate = new QueryAggregate { Id = id };

            // Assert
            aggregate.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Field_Equals()
        {
            // Arrange and Act
            var field = new QueryElement();
            var aggregate = new QueryAggregate { Field = field };

            // Assert
            aggregate.Field.Should().Be(field);
        }

        [Fact]
        public void Set_Function_Equals()
        {
            // Arrange and Act
            var function = _fixture.Create<QueryAggregateFunction>();
            var aggregate = new QueryAggregate { Function = function };

            // Assert
            aggregate.Function.Should().Be(function);
        }
    }
}
