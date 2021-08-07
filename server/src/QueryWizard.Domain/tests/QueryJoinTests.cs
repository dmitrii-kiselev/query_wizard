using AutoFixture;
using FluentAssertions;
using QueryWizard.Domain.Entities;
using Xunit;

namespace QueryWizard.Domain.Tests
{
    public class QueryJoinTests
    {
        private readonly Fixture _fixture;

        public QueryJoinTests()
        {
            _fixture = new Fixture();
        }

        [Fact]
        public void Set_Id_Equals()
        {
            // Arrange and Act
            string id = _fixture.Create<string>();
            var join = new QueryJoin { Id = id };

            // Assert
            join.Id.Should().Be(id);
        }

        [Fact]
        public void Set_LeftTable_Equals()
        {
            // Arrange and Act
            var leftTable = new QueryElement();
            var join = new QueryJoin { LeftTable = leftTable };

            // Assert
            join.LeftTable.Should().Be(leftTable);
        }

        [Fact]
        public void Set_IsLeftAll_Equals()
        {
            // Arrange and Act
            bool isLeftAll = _fixture.Create<bool>();
            var join = new QueryJoin { IsLeftAll = isLeftAll };

            // Assert
            join.IsLeftAll.Should().Be(isLeftAll);
        }

        [Fact]
        public void Set_RightTable_Equals()
        {
            // Arrange and Act
            var rightTable = new QueryElement();
            var join = new QueryJoin { RightTable = rightTable };

            // Assert
            join.RightTable.Should().Be(rightTable);
        }

        [Fact]
        public void Set_IsRightAll_Equals()
        {
            // Arrange and Act
            bool isRightAll = _fixture.Create<bool>();
            var join = new QueryJoin { IsRightAll = isRightAll };

            // Assert
            join.IsRightAll.Should().Be(isRightAll);
        }

        [Fact]
        public void Set_Condition_Equals()
        {
            // Arrange and Act
            var condition = new QueryCondition();
            var join = new QueryJoin { Condition = condition };

            // Assert
            join.Condition.Should().Be(condition);
        }
    }
}
