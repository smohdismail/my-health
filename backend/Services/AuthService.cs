using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Backend.Data;
using Backend.DTOs;
using Backend.Models;
using BCrypt.Net;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;

namespace Backend.Services
{
    public interface IAuthService
    {
        Task<TokenResponseDto?> RegisterAsync(RegisterDto dto);
        Task<TokenResponseDto?> LoginAsync(LoginDto dto);
        Task<TokenResponseDto?> RefreshTokenAsync(RefreshRequestDto dto);
    }

    public class AuthService : IAuthService
    {
        private readonly AppDbContext _db;
        private readonly IConfiguration _config;

        public AuthService(AppDbContext db, IConfiguration config)
        {
            _db = db;
            _config = config;
        }

        public async Task<TokenResponseDto?> RegisterAsync(RegisterDto dto)
        {
            if (await _db.Users.AnyAsync(u => u.Email.ToLower() == dto.Email.ToLower()))
                return null;

            var passwordHash = BCrypt.Net.BCrypt.HashPassword(dto.Password);
            var user = new User
            {
                Email = dto.Email.ToLower(),
                PasswordHash = passwordHash,
                Profile = new UserProfile
                {
                    Name = dto.Name,
                    BiologicalSex = dto.BiologicalSex
                }
            };

            _db.Users.Add(user);
            await _db.SaveChangesAsync();

            return await GenerateTokenResponseAsync(user);
        }

        public async Task<TokenResponseDto?> LoginAsync(LoginDto dto)
        {
            var user = await _db.Users.Include(u => u.Profile).FirstOrDefaultAsync(u => u.Email.ToLower() == dto.Email.ToLower());
            if (user == null || !BCrypt.Net.BCrypt.Verify(dto.Password, user.PasswordHash))
                return null;

            return await GenerateTokenResponseAsync(user);
        }

        public async Task<TokenResponseDto?> RefreshTokenAsync(RefreshRequestDto dto)
        {
            var tokenRecord = await _db.RefreshTokens.FirstOrDefaultAsync(r => r.UserId == dto.UserId && r.Token == dto.RefreshToken && !r.IsRevoked);
            if (tokenRecord == null || tokenRecord.ExpiresAt < DateTime.UtcNow)
                return null;

            tokenRecord.IsRevoked = true;
            await _db.SaveChangesAsync();

            var user = await _db.Users.Include(u => u.Profile).FirstOrDefaultAsync(u => u.Id == dto.UserId);
            if (user == null) return null;

            return await GenerateTokenResponseAsync(user);
        }

        private async Task<TokenResponseDto> GenerateTokenResponseAsync(User user)
        {
            var jwtKey = _config["Jwt:Key"] ?? "SUPER_SECRET_HMAC_SHA256_DEVELOPMENT_KEY_MYHEALTH_2026";
            var issuer = _config["Jwt:Issuer"] ?? "MyHealthBackend";

            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.UTF8.GetBytes(jwtKey);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim(ClaimTypes.NameIdentifier, user.Id),
                    new Claim(ClaimTypes.Email, user.Email)
                }),
                Expires = DateTime.UtcNow.AddHours(24),
                Issuer = issuer,
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };

            var jwtToken = tokenHandler.CreateToken(tokenDescriptor);
            var tokenString = tokenHandler.WriteToken(jwtToken);

            var refreshToken = Convert.ToBase64String(RandomNumberGenerator.GetBytes(64));
            var refreshTokenEntity = new RefreshToken
            {
                UserId = user.Id,
                Token = refreshToken,
                ExpiresAt = DateTime.UtcNow.AddDays(30)
            };

            _db.RefreshTokens.Add(refreshTokenEntity);
            await _db.SaveChangesAsync();

            return new TokenResponseDto
            {
                Token = tokenString,
                RefreshToken = refreshToken,
                UserId = user.Id,
                Email = user.Email
            };
        }
    }
}
