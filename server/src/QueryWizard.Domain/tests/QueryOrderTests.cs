using System.Collections.Generic;
using AutoFixture;
using FluentAssertions;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Enums;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryOrderTests
    {
        private readonly Fixture _fixture;

        public QueryOrderTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var order = new QueryOrder { Id = id };

            // Assert
            order.Id.Should().Be(id);
        }

        [Fact]
        public void Set_Field_Equals()
        {
            // Arrange and Act
            var field = new QueryElement();
            var order = new QueryOrder { Field = field };

            // Assert
            order.Field.Should().Be(field);
        }

        [Fact]
        public void Set_Type_Equals()
        {
            // Arrange and Act
            var type = _fixture.Create<QuerySortingType>();
            var order = new QueryOrder { Type = type };

            // Assert
            order.Type.Should().Be(type);
        }
    }
}
