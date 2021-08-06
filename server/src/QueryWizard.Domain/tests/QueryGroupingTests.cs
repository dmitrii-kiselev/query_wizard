using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryGroupingTests
    {
        private readonly Fixture _fixture;

        public QueryGroupingTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var grouping = new QueryGrouping { Id = id };

            // Assert
            grouping.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Field_Equals()
        {
            // Arrange and Act
            var field = new QueryElement();
            var grouping = new QueryGrouping { Field = field };

            // Assert
            grouping.Field.Should().Be(field);
        }

        [Fact]
        public void Set_Type_Equals()
        {
            // Arrange and Act
            var type = _fixture.Create<QueryGroupingType>();
            var grouping = new QueryGrouping { Type = type };

            // Assert
            grouping.Type.Should().Be(type);
        }

        [Fact]
        public void Set_Parent_Equals()
        {
            // Arrange and Act
            var parent = new QueryGrouping();
            var grouping = new QueryGrouping { Parent = parent };

            // Assert
            grouping.Parent.Should().Be(parent);
        }

        [Fact]
        public void Set_Elements_Equals()
        {
            // Arrange and Act
            var elements = new List<QueryGrouping>();
            var grouping = new QueryGrouping { Elements = elements };

            // Assert
            grouping.Elements.Should().AllBeEquivalentTo(elements);
        }
    }
}
