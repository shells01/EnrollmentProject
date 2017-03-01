using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courses
{
    public class Student
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        
        public List<Course> Courses { get; set; }

          public Student(){
            Courses = new List<Course>();
        }
    }
}