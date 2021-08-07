using System.Threading;
using System.Threading.Tasks;
using MediatR;
using QueryWizard.Domain.Entities;
using QueryWizard.Domain.Repositories;

namespace QueryWizard.Application.Commands
{
    public class ParseQueryCommand : IRequest<QuerySchema>
    {
        public ParseQueryCommand(string query)
        {
            Query = query;
        }

        public string Query { get; }
    }

    public class ParseQueryCommandHandler : IRequestHandler<ParseQueryCommand, QuerySchema>
    {
        private readonly IQuerySchemaBuilder _querySchemaBuilder;

        public ParseQueryCommandHandler(IQuerySchemaBuilder querySchemaBuilder)
        {
            _querySchemaBuilder = querySchemaBuilder;
        }

        public Task<QuerySchema> Handle(ParseQueryCommand request, CancellationToken cancellationToken)
        {
            return _querySchemaBuilder.Build(request.Query);
        }
    }
}
