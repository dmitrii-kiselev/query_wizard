using AutoFixture;
using FluentAssertions;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryConditionTests
    {
        private readonly Fixture _fixture;

        public QueryConditionTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var condition = new QueryCondition { Id = id };

            // Assert
            condition.Id.Should().Be(id);
        }

        [Fact]
        public void Set_IsCustom_Equals()
        {
            // Arrange and Act
            bool isCustom = _fixture.Create<bool>();
            var condition = new QueryCondition { IsCustom = isCustom };

            // Assert
            condition.IsCustom.Should().Be(isCustom);
        }

        [Fact]
        public void Set_LeftField_Equals()
        {
            // Arrange and Act
            var leftField = new QueryElement();
            var condition = new QueryCondition { LeftField = leftField };

            // Assert
            condition.LeftField.Should().Be(leftField);
        }

        [Fact]
        public void Set_LogicalCompareType_Equals()
        {
            // Arrange and Act
            var logicalCompareType = _fixture.Create<LogicalCompareType>();
            var condition = new QueryCondition { LogicalCompareType = logicalCompareType };

            // Assert
            condition.LogicalCompareType.Should().Be(logicalCompareType);
        }

        [Fact]
        public void Set_RightField_Equals()
        {
            // Arrange and Act
            var rightField = new QueryElement();
            var condition = new QueryCondition { RightField = rightField };

            // Assert
            condition.RightField.Should().Be(rightField);
        }

        [Fact]
        public void Set_CustomCondition_Equals()
        {
            // Arrange and Act
            string customCondition = _fixture.Create<string>();
            var batch = new QueryCondition { CustomCondition = customCondition };

            // Assert
            batch.CustomCondition.Should().Be(customCondition);
        }
    }
}
