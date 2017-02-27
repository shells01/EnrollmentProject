namespace Courses
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class EnrollmentContext : DbContext
    {
        // Your context has been configured to use a 'Enrollment' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'Courses.Enrollment' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'Enrollment' 
        // connection string in the application configuration file.
        public EnrollmentContext ()
            : base("name=EnrollmentContext")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        public virtual DbSet<Course> Course { get; set; }
        public virtual DbSet<Student> Student { get; set; }
        
    }

    
}