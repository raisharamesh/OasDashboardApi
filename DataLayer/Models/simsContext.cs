using Microsoft.EntityFrameworkCore;

namespace DataLayer.Models
{
    public partial class simsContext : DbContext
    {
        public simsContext(DbContextOptions<simsContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Provider> Provider { get; set; }
        public virtual DbSet<RefreshStrategy> RefreshStrategy { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Provider>(entity =>
            {
                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PartnerCode)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<RefreshStrategy>(entity =>
            {
                entity.Property(e => e.LastUpdated).HasColumnType("datetime");

                entity.Property(e => e.Strategy)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.HasOne(d => d.Provider)
                    .WithMany(p => p.RefreshStrategy)
                    .HasForeignKey(d => d.ProviderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__RefreshSt__Provi__2F10007B");
            });
        }
    }
}
