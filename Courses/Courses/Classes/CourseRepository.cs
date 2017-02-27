using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courses
{
    public class CourseRepository
    {
        public List<Course> GetCourses()
        {
            EnrollmentContext enrollmentContext = new EnrollmentContext();
            return enrollmentContext.Course.ToList();
        }
    }
}