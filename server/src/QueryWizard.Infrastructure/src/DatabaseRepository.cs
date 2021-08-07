using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Microsoft.Data.Sqlite;
using QueryWizard.Domain.Repositories;

namespace QueryWizard.Infrastructure
{
    /// <summary>
    ///
    /// </summary>
    public class DatabaseRepository : IDatabaseRepository
    {
        /// <summary>
        ///
        /// </summary>
        /// <returns></returns>
        public Task<IEnumerable<string>> GetTableNames()
        {
            using var connection = new SqliteConnection("Data Source=database.db;Mode=ReadOnly");
            const string sqlTablesNames = "SELECT name FROM sqlite_master WHERE type = \"table\";";

            return connection.QueryAsync<string>(sqlTablesNames);
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public Task<IEnumerable<string>> GetColumnNames(string tableName)
        {
            using var connection = new SqliteConnection("Data Source=chinook.db;Mode=ReadOnly");
            const string sqlColumnNames = "SELECT name FROM PRAGMA_TABLE_INFO(@TableName);";

            return connection.QueryAsync<string>(sqlColumnNames, new { TableName = tableName });
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public async Task<IDictionary<string, string>> GetForeignKeys(string tableName)
        {
            await using var connection = new SqliteConnection("Data Source=chinook.db;Mode=ReadOnly");
            const string sqlColumnNames = "SELECT * FROM PRAGMA_FOREIGN_KEY_LIST(@TableName);";

            var keys = await connection
                .QueryAsync<ForeignKey>(sqlColumnNames, new { TableName = tableName })
                .ConfigureAwait(false);

            return keys.ToDictionary(k => k.From, k => k.Table);
        }
    }

    internal class ForeignKey
    {
        public int Id { get; set; }

        public int Seq { get; set; }

        public string Table { get; set; }

        public string From { get; set; }

        public string To { get; set; }

        public string OnUpdate { get; set; }

        public string OnDelete { get; set; }

        public string Match { get; set; }
    }
}
