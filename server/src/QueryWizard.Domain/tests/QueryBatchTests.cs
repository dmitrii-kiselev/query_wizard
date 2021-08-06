using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryBatchTests
    {
        private readonly Fixture _fixture;

        public QueryBatchTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var batch = new QueryBatch { Id = id };

            // Assert
            batch.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Name_Equals()
        {
            // Arrange and Act
            string name = _fixture.Create<string>();
            var batch = new QueryBatch { Name = name };

            // Assert
            batch.Name.Should().Be(name);
        }

        [Fact]
        public void Set_Sources_Equals()
        {
            // Arrange and Act
            var sources = new List<QueryElement>();
            var batch = new QueryBatch { Sources = sources };

            // Assert
            batch.Sources.Should().AllBeEquivalentTo(sources);
        }

        [Fact]
        public void Set_Queries_Equals()
        {
            // Arrange and Act
            var queries = new List<Query>();
            var batch = new QueryBatch { Queries = queries };

            // Assert
            batch.Queries.Should().AllBeEquivalentTo(queries);
        }

        [Fact]
        public void Set_Aliases_Equals()
        {
            // Arrange and Act
            var aliases = new Dictionary<string, Dictionary<string, string>>();
            var batch = new QueryBatch { Aliases = aliases };

            // Assert
            batch.Aliases.Should().Equal(aliases);
        }

        [Fact]
        public void Set_QueryType_Equals()
        {
            // Arrange and Act
            var queryType = _fixture.Create<QueryType>();
            var batch = new QueryBatch { QueryType = queryType };

            // Assert
            batch.QueryType.Should().Be(queryType);
        }

        [Fact]
        public void Set_TempTableName_Equals()
        {
            // Arrange and Act
            string tempTableName = _fixture.Create<string>();
            var batch = new QueryBatch { TempTableName = tempTableName };

            // Assert
            batch.TempTableName.Should().Be(tempTableName);
        }
    }
}
