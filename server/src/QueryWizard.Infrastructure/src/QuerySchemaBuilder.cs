using System;
using System.Threading.Tasks;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Repositories;

namespace QueryWizard.Infrastructure
{
    /// <summary>
    ///
    /// </summary>
    public class QuerySchemaBuilder : IQuerySchemaBuilder
    {
        /// <summary>
        ///
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        /// <exception cref="NotImplementedException"></exception>
        public Task<QuerySchema> Build(string query) => throw new NotImplementedException();

        /// <summary>
        ///
        /// </summary>
        /// <param name="querySchema"></param>
        /// <returns></returns>
        /// <exception cref="NotImplementedException"></exception>
        public Task<string> GetQuery(QuerySchema querySchema) => throw new NotImplementedException();
    }
}
