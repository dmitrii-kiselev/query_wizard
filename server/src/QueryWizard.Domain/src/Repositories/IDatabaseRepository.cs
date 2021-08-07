using System.Collections.Generic;
using System.Threading.Tasks;

namespace QueryWizard.Domain.Repositories
{
    public interface IDatabaseRepository
    {
        Task<IEnumerable<string>> GetTableNames();

        Task<IEnumerable<string>> GetColumnNames(string tableName);

        Task<IDictionary<string, string>> GetForeignKeys(string tableName);
    }
}
