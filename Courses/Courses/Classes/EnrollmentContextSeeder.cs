using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Courses
{
    public class EnrollmentContextSeeder : DropCreateDatabaseIfModelChanges<EnrollmentContext>
    {
        protected override void Seed(EnrollmentContext context)
        {
            Course course1 = new Course()
            {
                CourseName = "World History 1", Instructor = "Robert Roberts", Department = "History",
                Students = new List<Student>()
                {
                    new Student() { StudentName = "Mark Jones"},
                    new Student() { StudentName = "Becky Smith"},
                    new Student() { StudentName = "Robin Prins"}
                }
            };

            Course course2 = new Course()
            {
                CourseName = "Calculus 1",
                Instructor = "John Brown",
                Department = "Math and Science",
                Students = new List<Student>()
                {
                    new Student() { StudentName = "Mary Jones"},
                    new Student() { StudentName = "Becky Smith"},
                    new Student() { StudentName = "Lucy Pratt"}
                }
            };


            context.Course.Add(course1);
            context.Course.Add(course2);
            base.Seed(context);
        }
    }
}