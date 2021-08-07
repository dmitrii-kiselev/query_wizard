using System.Collections.Generic;
using System.Threading.Tasks;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using QueryWizard.Application.Commands;
using QueryWizard.Application.Queries;
using QueryWizard.Domain.Entities;

namespace QueryWizard.Server.Controllers
{
    [ApiController]
    [Route("query-schema")]
    public class QueryWizardController : ControllerBase
    {
        private readonly IMediator _mediator;

        public QueryWizardController(IMediator mediator) => _mediator = mediator;

        [HttpPost("parse-query")]
        public async Task<QuerySchema> ParseQuery([FromBody] string query) =>
            await _mediator.Send(new ParseQueryCommand(query)).ConfigureAwait(false);

        [HttpGet("get-sources")]
        public async Task<List<QueryElement>> GetSources() =>
            await _mediator.Send(new GetSourcesQuery()).ConfigureAwait(false);

        [HttpPost("build-query")]
        public async Task<string> BuildQuery([FromBody] QuerySchema querySchema) =>
            await _mediator.Send(new BuildQueryCommand(querySchema)).ConfigureAwait(false);
    }
}
