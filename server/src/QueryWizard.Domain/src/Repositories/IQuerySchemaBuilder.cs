using System.Threading.Tasks;
using QueryWizard.Domain.Entities;

namespace QueryWizard.Domain.Repositories
{
    public interface IQuerySchemaBuilder
    {
        Task<QuerySchema> Build(string query);

        Task<string> GetQuery(QuerySchema querySchema);
    }
}
