using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courses.Views
{
    public partial class AddCourse : System.Web.UI.Page
    {
        private EnrollmentContext db = new EnrollmentContext();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string NewName = nameTextBox.Text.ToLower();
            if (db.Course.Any(x => x.CourseName.ToLower() == NewName))
            {
                resultLabel.Text = "This course already exists.";
            }
            else
            {
                var NewCourse = new Course() { CourseName = nameTextBox.Text, Department = departmentTextBox.Text, Instructor = instructorTextBox.Text };
                db.Course.Add(NewCourse);
                db.SaveChanges();

                resultLabel.Text = "The course has been saved.";
            }
        }
    }
}