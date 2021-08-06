using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryElementTests
    {
        private readonly Fixture _fixture;

        public QueryElementTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var condition = new QueryElement { Id = id };

            // Assert
            condition.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Name_Equals()
        {
            // Arrange and Act
            string name = _fixture.Create<string>();
            var condition = new QueryElement { Name = name };

            // Assert
            condition.Name.Should().Be(name);
        }

        [Fact]
        public void Set_Alias_Equals()
        {
            // Arrange and Act
            string alias = _fixture.Create<string>();
            var condition = new QueryElement { Alias = alias };

            // Assert
            condition.Alias.Should().Be(alias);
        }

        [Fact]
        public void Set_Type_Equals()
        {
            // Arrange and Act
            var type = _fixture.Create<QueryElementType>();
            var condition = new QueryElement { Type = type };

            // Assert
            condition.Type.Should().Be(type);
        }

        [Fact]
        public void Set_Parent_Equals()
        {
            // Arrange and Act
            var parent = new QueryElement();
            var condition = new QueryElement { Parent = parent };

            // Assert
            condition.Parent.Should().Be(parent);
        }

        [Fact]
        public void Set_Elements_Equals()
        {
            // Arrange and Act
            var elements = new List<QueryElement>();
            var schema = new QueryElement { Elements = elements };

            // Assert
            schema.Elements.Should().AllBeEquivalentTo(elements);
        }
    }
}
