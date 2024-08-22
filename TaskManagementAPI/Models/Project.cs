using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace TaskManagementAPI.Models
{
    public class Project
    {
        public int ProjectId { get; set; }

        [Required]
        public string Name { get; set; }

        public string Description { get; set; }

       
        [ForeignKey("User")]
        public int UserId { get; set; }
        public User User { get; set; }

        public List<ProjectTask> ProjectTasks { get; set; }
    }
}