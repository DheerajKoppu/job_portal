using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace JobPortal.Data.Entities
{
    /// <summary>
    /// Represents an application user, inheriting from IdentityUser with a Guid as the primary key.
    /// </summary>
    public class AppUser : IdentityUser<Guid>
    {
        // ================== User Information ==================

        /// <summary>
        /// Full name of the user.
        /// </summary>
        [Display(Name = "Full name")]
        [StringLength(100, ErrorMessage = "Full name cannot be more than 100 characters.")]
        public string? FullName { get; set; }

        /// <summary>
        /// Phone number of the user.
        /// </summary>
        [Display(Name = "Phone")]
        [StringLength(20, ErrorMessage = "Please enter a valid phone number.", MinimumLength = 9)]
        public string? Phone { get; set; }

        /// <summary>
        /// Address of the user.
        /// </summary>
        [Display(Name = "Address")]
        public string? Address { get; set; }

        /// <summary>
        /// Age of the user, must be between 0 and 100.
        /// </summary>
        [Display(Name = "Age")]
        [Range(0, 100, ErrorMessage = "Please enter a valid age.")]
        public int? Age { get; set; }

        /// <summary>
        /// Date when the user account was created.
        /// </summary>
        [Display(Name = "Create date")]
        public DateTime? CreateDate { get; set; }

        /// <summary>
        /// URL to the user's avatar image.
        /// </summary>
        [Display(Name = "Logo")]
        public string? UrlAvatar { get; set; }

        // ================== Employer Information ==================

        /// <summary>
        /// Contact information of the employer.
        /// </summary>
        [Display(Name = "Contact")]
        public string? Contact { get; set; }

        /// <summary>
        /// Description or overview of the company.
        /// </summary>
        [Display(Name = "Company overview")]
        public string? Description { get; set; }

        /// <summary>
        /// The company's website URL, limited to 50 characters.
        /// </summary>
        [Display(Name = "Website")]
        [StringLength(50, ErrorMessage = "The website cannot be more than 50 characters.")]
        public string? WebsiteURL { get; set; }

        /// <summary>
        /// Location of the company.
        /// </summary>
        [Display(Name = "Location")]
        public string? Location { get; set; }

        /// <summary>
        /// A collection of jobs associated with the employer.
        /// </summary>
        public ICollection<Job>? Jobs { get; set; }

        /// <summary>
        /// Status of the employer account.
        /// 0 = denied, 1 = waiting, 2 = confirmed, -1 = admin, null = default.
        /// </summary>
        public int? Status { get; set; }

        /// <summary>
        /// Unique slug for the user, required.
        /// </summary>
        [Required]
        public string Slug { get; set; }

        /// <summary>
        /// Province where the employer or user is located.
        /// </summary>
        public Province? Province { get; set; }

        /// <summary>
        /// Foreign key reference to the Province entity.
        /// </summary>
        [Display(Name = "Province")]
        public int? ProvinceId { get; set; }

        /// <summary>
        /// Indicates whether the account is disabled.
        /// </summary>
        public bool? Disable { get; set; }

        /// <summary>
        /// Company size description.
        /// </summary>
        [Display(Name = "Company size")]
        public string? CompanySize { get; set; }

        /// <summary>
        /// Working days of the company.
        /// </summary>
        [Display(Name = "Working days")]
        public string? WorkingDays { get; set; }

        /// <summary>
        /// Country where the employer or user is located.
        /// </summary>
        public Country? Country { get; set; }

        /// <summary>
        /// Foreign key reference to the Country entity.
        /// </summary>
        [Display(Name = "Country")]
        public int? CountryId { get; set; }

        /// <summary>
        /// Additional content or information about the employer.
        /// </summary>
        [Display(Name = "Content")]
        public string? Content { get; set; }

        /// <summary>
        /// Popularity ranking of the employer or job listing.
        /// </summary>
        public int Popular { get; set; }
    }
}
