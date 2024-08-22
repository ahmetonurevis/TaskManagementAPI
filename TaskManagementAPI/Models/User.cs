using System.ComponentModel.DataAnnotations;

namespace TaskManagementAPI.Models
{
    public class User
    {
        public int UserId { get; set; }

        [Required]
        public string Username { get; set; }
        
        [Required]
        public string Password{ get; set; }

        [Required]
        public string Role { get; set; }

        public List<Project> Projects { get; set; } = new List<Project>();
    }
}