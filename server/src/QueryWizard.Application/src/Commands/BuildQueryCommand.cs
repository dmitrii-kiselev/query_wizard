using System.Threading;
using System.Threading.Tasks;
using MediatR;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Repositories;

namespace QueryWizard.Application.Commands
{
    public class BuildQueryCommand : IRequest<string>
    {
        public BuildQueryCommand(QuerySchema querySchema)
        {
            QuerySchema = querySchema;
        }

        public QuerySchema QuerySchema { get; }
    }

    public class BuildQueryCommandHandler : IRequestHandler<BuildQueryCommand, string>
    {
        private readonly IQuerySchemaBuilder _querySchemaBuilder;

        public BuildQueryCommandHandler(IQuerySchemaBuilder querySchemaBuilder)
        {
            _querySchemaBuilder = querySchemaBuilder;
        }

        public Task<string> Handle(BuildQueryCommand request, CancellationToken cancellationToken)
        {
            return _querySchemaBuilder.GetQuery(request.QuerySchema);
        }
    }
}
