using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Enums;
using QueryWizard.Domain.Repositories;

namespace QueryWizard.Application.Queries
{
    public class GetSourcesQuery : IRequest<List<QueryElement>>
    {
    }

    public class GetSourcesQueryHandler : IRequestHandler<GetSourcesQuery, List<QueryElement>>
    {
        private readonly IDatabaseRepository _databaseRepository;

        public GetSourcesQueryHandler(IDatabaseRepository databaseRepository)
        {
            _databaseRepository = databaseRepository;
        }

        public async Task<List<QueryElement>> Handle(GetSourcesQuery request, CancellationToken cancellationToken)
        {
            var sources = new List<QueryElement>();
            var tableNames = await _databaseRepository.GetTableNames().ConfigureAwait(false);

            foreach (string tableName in tableNames)
            {
                var table = new QueryElement
                {
                    Id = Guid.NewGuid().ToString(),
                    Name = tableName,
                    Type = QueryElementType.Table,
                    Elements = new List<QueryElement>()
                };

                var columnNames = await _databaseRepository.GetColumnNames(tableName).ConfigureAwait(false);
                var foreignKeys = await _databaseRepository.GetForeignKeys(tableName).ConfigureAwait(false);

                foreach (string columnName in columnNames)
                {
                    var column = new QueryElement
                    {
                        Id = Guid.NewGuid().ToString(),
                        Name = columnName,
                        Type = QueryElementType.Column,
                        Parent = new QueryElement { Name = table.Name },
                        Elements = new List<QueryElement>()
                    };

                    var foreignKey = foreignKeys.FirstOrDefault(k => k.Key == columnName);
                    if (foreignKey.Value != null)
                    {
                        column.Elements.Add(new QueryElement { Name = foreignKey.Value });
                    }

                    table.Elements.Add(column);
                }

                sources.Add(table);
            }

            return sources;
        }
    }
}
