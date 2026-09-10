using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Backend.Models
{
    public class User
    {
        [Key]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required, EmailAddress]
        public string Email { get; set; } = string.Empty;

        [Required]
        public string PasswordHash { get; set; } = string.Empty;

        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;

        public UserProfile? Profile { get; set; }
        public ICollection<RefreshToken> RefreshTokens { get; set; } = new List<RefreshToken>();
        public ICollection<HealthMeasurement> Measurements { get; set; } = new List<HealthMeasurement>();
        public ICollection<SemenAnalysisRecord> SemenAnalyses { get; set; } = new List<SemenAnalysisRecord>();
        public ICollection<HormoneRecord> Hormones { get; set; } = new List<HormoneRecord>();
    }

    public class UserProfile
    {
        [Key, ForeignKey("User")]
        public string UserId { get; set; } = string.Empty;

        public string? Name { get; set; }
        public string BiologicalSex { get; set; } = "male"; // male, female, other
        public DateTime? DateOfBirth { get; set; }
        public double? HeightCm { get; set; }
        public double? WeightKg { get; set; }
        public string ActivityLevel { get; set; } = "moderate";
        public string PreferredUnits { get; set; } = "metric";
        public string Timezone { get; set; } = "UTC";
        public bool IsBiometricEnabled { get; set; } = false;

        public User? User { get; set; }
    }

    public class RefreshToken
    {
        [Key]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required]
        public string UserId { get; set; } = string.Empty;

        [Required]
        public string Token { get; set; } = string.Empty;

        public DateTime ExpiresAt { get; set; }
        public bool IsRevoked { get; set; } = false;
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

        [ForeignKey("UserId")]
        public User? User { get; set; }
    }

    public class HealthMeasurement
    {
        [Key]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required]
        public string UserId { get; set; } = string.Empty;

        [Required]
        public string Type { get; set; } = string.Empty; // e.g. weight, heartRate, bloodPressureSystolic

        public double Value { get; set; }
        public string Unit { get; set; } = string.Empty;
        public DateTime Timestamp { get; set; }
        public string Source { get; set; } = "Manual"; // Manual, Health Connect, Lab, Device
        public string? SourceId { get; set; }
        public string? Notes { get; set; }
        public double? OriginalValue { get; set; }
        public bool IsDeleted { get; set; } = false;
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    public class SemenAnalysisRecord
    {
        [Key]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required]
        public string UserId { get; set; } = string.Empty;

        public DateTime CollectionDate { get; set; }
        public DateTime AnalysisDate { get; set; }
        public double? VolumeMl { get; set; }
        public double? ConcentrationMPerMl { get; set; }
        public double? TotalCountM { get; set; }
        public double? ProgressiveMotilityPct { get; set; }
        public double? NonProgressiveMotilityPct { get; set; }
        public double? ImmotilePct { get; set; }
        public double? TotalMotilityPct { get; set; }
        public double? MorphologyPct { get; set; }
        public double? VitalityPct { get; set; }
        public double? Ph { get; set; }
        public string? Liquefaction { get; set; }
        public double? RoundCells { get; set; }
        public string? LabName { get; set; }
        public string? Notes { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    public class HormoneRecord
    {
        [Key]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required]
        public string UserId { get; set; } = string.Empty;

        [Required]
        public string TestName { get; set; } = string.Empty;

        public double ResultValue { get; set; }
        public string Unit { get; set; } = string.Empty;
        public double? RefRangeLow { get; set; }
        public double? RefRangeHigh { get; set; }
        public DateTime CollectionDate { get; set; }
        public string? LabName { get; set; }
        public string? Notes { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }
}
