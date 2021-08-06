using Microsoft.AspNetCore.Mvc;

namespace QueryWizard.Server.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class QueryWizardController : ControllerBase
    {
        [HttpGet]
        public string Get()
        {
            return string.Empty;
        }
    }
}
