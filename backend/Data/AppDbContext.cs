using Microsoft.EntityFrameworkCore;
using Backend.Models;

namespace Backend.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<User> Users => Set<User>();
        public DbSet<UserProfile> UserProfiles => Set<UserProfile>();
        public DbSet<RefreshToken> RefreshTokens => Set<RefreshToken>();
        public DbSet<HealthMeasurement> HealthMeasurements => Set<HealthMeasurement>();
        public DbSet<SemenAnalysisRecord> SemenAnalyses => Set<SemenAnalysisRecord>();
        public DbSet<HormoneRecord> Hormones => Set<HormoneRecord>();

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<User>()
                .HasIndex(u => u.Email)
                .IsUnique();

            modelBuilder.Entity<HealthMeasurement>()
                .HasIndex(m => new { m.UserId, m.Timestamp });

            modelBuilder.Entity<SemenAnalysisRecord>()
                .HasIndex(s => new { s.UserId, s.CollectionDate });

            modelBuilder.Entity<HormoneRecord>()
                .HasIndex(h => new { h.UserId, h.CollectionDate });

            // Global soft delete filter for HealthMeasurements
            modelBuilder.Entity<HealthMeasurement>()
                .HasQueryFilter(m => !m.IsDeleted);
        }
    }
}
