using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courses
{
    public class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string Instructor { get; set; }
        public string Department { get; set; }

        public List<Student> Students { get; set; }

        public Course(){
            Students = new List<Student>();
        }

        public static List<Course> GetCourses()
        {
            return new EnrollmentContext().Course.ToList();
        }
    }
}