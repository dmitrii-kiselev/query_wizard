using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryTests
    {
        private readonly Fixture _fixture;

        public QueryTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var query = new Query { Id = id };

            // Assert
            query.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Name_Equals()
        {
            // Arrange and Act
            string name = _fixture.Create<string>();
            var query = new Query { Name = name };

            // Assert
            query.Name.Should().Be(name);
        }

        [Fact]
        public void Set_Sources_Equals()
        {
            // Arrange and Act
            var sources = new List<QueryElement>();
            var query = new Query { Sources = sources };

            // Assert
            query.Sources.Should().AllBeEquivalentTo(sources);
        }

        [Fact]
        public void Set_Tables_Equals()
        {
            // Arrange and Act
            var tables = new List<QueryElement>();
            var query = new Query { Tables = tables };

            // Assert
            query.Tables.Should().AllBeEquivalentTo(tables);
        }

        [Fact]
        public void Set_Fields_Equals()
        {
            // Arrange and Act
            var fields = new List<QueryElement>();
            var query = new Query { Fields = fields };

            // Assert
            query.Fields.Should().AllBeEquivalentTo(fields);
        }

        [Fact]
        public void Set_Joins_Equals()
        {
            // Arrange and Act
            var joins = new List<QueryJoin>();
            var query = new Query { Joins = joins };

            // Assert
            query.Joins.Should().AllBeEquivalentTo(joins);
        }

        [Fact]
        public void Set_Groupings_Equals()
        {
            // Arrange and Act
            var groupings = new List<QueryGrouping>();
            var query = new Query { Groupings = groupings };

            // Assert
            query.Groupings.Should().AllBeEquivalentTo(groupings);
        }

        [Fact]
        public void Set_Aggregates_Equals()
        {
            // Arrange and Act
            var aggregates = new List<QueryAggregate>();
            var query = new Query { Aggregates = aggregates };

            // Assert
            query.Aggregates.Should().AllBeEquivalentTo(aggregates);
        }

        [Fact]
        public void Set_Conditions_Equals()
        {
            // Arrange and Act
            var conditions = new List<QueryCondition>();
            var query = new Query { Conditions = conditions };

            // Assert
            query.Conditions.Should().AllBeEquivalentTo(conditions);
        }

        [Fact]
        public void Set_Orders_Equals()
        {
            // Arrange and Act
            var orders = new List<QueryOrder>();
            var query = new Query { Orders = orders };

            // Assert
            query.Orders.Should().AllBeEquivalentTo(orders);
        }

        [Fact]
        public void Set_IsTop_Equals()
        {
            // Arrange and Act
            bool isTop = _fixture.Create<bool>();
            var query = new Query { IsTop = isTop };

            // Assert
            query.IsTop.Should().Be(isTop);
        }

        [Fact]
        public void Set_TopCounter_Equals()
        {
            // Arrange and Act
            int topCounter = _fixture.Create<int>();
            var query = new Query { TopCounter = topCounter };

            // Assert
            query.TopCounter.Should().Be(topCounter);
        }

        [Fact]
        public void Set_IsDistinct_Equals()
        {
            // Arrange and Act
            bool isDistinct = _fixture.Create<bool>();
            var query = new Query { IsDistinct = isDistinct };

            // Assert
            query.IsDistinct.Should().Be(isDistinct);
        }
    }
}
