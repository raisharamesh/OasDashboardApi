using System;

namespace DataLayer.Models
{
    public partial class RefreshStrategy
    {
        public int Id { get; set; }
        public int ProviderId { get; set; }
        public string Strategy { get; set; }
        public int? StartOffset { get; set; }
        public int? EndOffset { get; set; }
        public DateTime LastUpdated { get; set; }

        public Provider Provider { get; set; }
    }
}
