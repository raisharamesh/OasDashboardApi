using System;
using System.Collections.Generic;

namespace DataLayer.Models
{
    public partial class Provider
    {
        public Provider()
        {
            RefreshStrategy = new HashSet<RefreshStrategy>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string PartnerCode { get; set; }
        public bool? IsActive { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }

        public ICollection<RefreshStrategy> RefreshStrategy { get; set; }
    }
}
