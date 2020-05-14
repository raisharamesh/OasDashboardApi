using DataLayer.Models;
using Microsoft.EntityFrameworkCore;
using ServiceLayer.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ServiceLayer
{
    public interface IProviderService
    {
        Task<Provider> GetProvider(int id);
        Task<List<Provider>> GetAllProviders();
        Task<List<PartnerProvider>> GetProviderCountByPartner();
    }

    public class ProviderService: IProviderService
    {
        private simsContext _simsContext;

        public ProviderService(simsContext simsContext)
        {
            _simsContext = simsContext;
        }

        public async Task<List<Provider>> GetAllProviders()
        {
            return await _simsContext.Provider.ToListAsync();
        }

        public async Task<Provider> GetProvider(int id)
        {
            return await _simsContext.Provider.Where(x => x.Id == id).SingleOrDefaultAsync(); ;
        }

        public async Task<List<PartnerProvider>> GetProviderCountByPartner() {
            return await _simsContext.Provider
                .GroupBy(x => x.PartnerCode)
                .Select(x => new PartnerProvider { 
                    PartnerCode = x.Key,
                    ProviderCount = x.Count()
                }).ToListAsync();
        }
    }
}
