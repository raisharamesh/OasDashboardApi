using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataLayer.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ServiceLayer;
using ServiceLayer.Models;

namespace SimsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProviderController : ControllerBase
    {
        private IProviderService _providerService;

        public ProviderController(IProviderService providerService)
        {
            _providerService = providerService;
        }

        // GET: api/Provider
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Provider>>> Get()
        {
            var providers = await _providerService.GetAllProviders();
            if (providers == null)
            {
                return NotFound();
            }

            return Ok(providers);
        }

        // GET: api/Provider/5
        [HttpGet("{id}", Name = "Get")]
        public async Task<ActionResult<Provider>> Get(int id)
        {
            var provider = await _providerService.GetProvider(id);
            if (provider == null)
            {
                return NotFound();
            }

            return Ok(provider);
        }

        // POST: api/Provider
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Provider/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

        // GET: api/Provider
        [HttpGet]
        [Route("PartnerProviderCount")]
        public async Task<ActionResult<IEnumerable<PartnerProvider>>> GetProviderCountByPartner()
        {
            var partnerProviders = await _providerService.GetProviderCountByPartner();
            if (partnerProviders == null)
            {
                return NotFound();
            }

            return Ok(partnerProviders);
        }
    }
}
