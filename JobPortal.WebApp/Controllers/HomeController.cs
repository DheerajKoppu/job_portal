using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using JobPortal.Data.DataContext;
using JobPortal.WebApp.Models;
using System.Diagnostics;

namespace JobPortal.WebApp.Controllers
{
    /// <summary>
    /// The HomeController handles the main pages of the JobPortal web application, 
    /// including the homepage, about, pricing, contact, and privacy policy.
    /// </summary>
    public class HomeController : Controller
    {
        // Database context to interact with the database
        private readonly DataDbContext _context;

        /// <summary>
        /// Initializes a new instance of the HomeController with the given database context.
        /// </summary>
        /// <param name="dataDbContext">The database context for accessing application data.</param>
        public HomeController(DataDbContext dataDbContext)
        {
            this._context = dataDbContext;
        }

        /// <summary>
        /// Displays the homepage with job listings, search filters, and random employer/skill/job recommendations.
        /// </summary>
        /// <returns>The Index view.</returns>
        public IActionResult Index()
        {
            var random = new Random();

            // Fetch all jobs from the database
            var jobs = _context.Jobs.ToList();

            // Retrieve filter options for job search (Provinces and Skills)
            ViewBag.FilterProvinces = _context.Provinces.OrderBy(p => p.Id).ToList();
            ViewBag.FilterSkills = _context.Skills.OrderBy(s => s.Name).ToList();

            // Select 4 random employers that have at least one job posting
            var employerList = _context.Users
                .Where(e => e.Status == 2) // Only confirmed employers
                .Include(e => e.Province)
                .Include(e => e.Jobs)
                .ToList();
            ViewBag.RandomEmployers = employerList
                .OrderBy(e => Guid.NewGuid()) // Randomize order
                .Where(e => e.Jobs.Count > 0) // Ensure they have posted jobs
                .Take(4)
                .ToList();

            // Select 6 random skills from the database
            var skillList = _context.Skills.ToList();
            ViewBag.RandomSkills = skillList
                .OrderBy(s => random.Next()) // Shuffle list randomly
                .Take(6)
                .ToList();

            // Fetch all jobs with related data for better display
            var jobList = _context.Jobs
                .Include(j => j.Province)
                .Include(j => j.AppUser)
                .Include(j => j.Title)
                .Include(j => j.Time)
                .Include(j => j.Skills)
                .ToList();

            // Select 6 random jobs to display
            var randomJobs = jobList
                .OrderBy(j => random.Next())
                .Take(6)
                .ToList();
            ViewBag.RandomJobs = randomJobs;

            return View(jobs);
        }

        // ========================= Static Pages =========================

        /// <summary>
        /// Displays the "About Us" page.
        /// </summary>
        [Route("about-us")]
        public IActionResult AboutUs()
        {
            return View();
        }

        /// <summary>
        /// Displays the "Pricing" page.
        /// </summary>
        [Route("price")]
        public IActionResult Price()
        {
            return View();
        }

        /// <summary>
        /// Displays the "Contact" page.
        /// </summary>
        [Route("contact")]
        public IActionResult Contact()
        {
            return View();
        }

        /// <summary>
        /// Displays a UI elements showcase page.
        /// </summary>
        [Route("elements")]
        public IActionResult Elements()
        {
            return View();
        }

        /// <summary>
        /// Displays the "Privacy Policy" page.
        /// </summary>
        [Route("privacy")]
        public IActionResult Privacy()
        {
            return View();
        }

        /// <summary>
        /// Handles errors and displays an error page with diagnostic information.
        /// </summary>
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
