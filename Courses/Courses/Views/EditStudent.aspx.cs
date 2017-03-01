using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courses.Views
{
    public partial class EditStudent : System.Web.UI.Page
    {
        private EnrollmentContext db = new EnrollmentContext();
        private int CurrentStudentId;
        Student CurrentStudent;

        protected void Page_Load(object sender, EventArgs e)
        {
            //this.GetRouteUrl

            CurrentStudentId = -1;
        }

        void Save()
        {
            if (CurrentStudentId == -1)
            {
                //New Student
                CurrentStudent = new Student();
                db.Student.Add(CurrentStudent);

            }
            else
            {
                //Existing Student
                CurrentStudent = db.Student.Find(CurrentStudentId);
            }

            CurrentStudent.StudentName = txtName.Text;

            db.SaveChanges();
            CurrentStudentId = CurrentStudent.StudentId;
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(cbxCourses.SelectedValue);
            Course SelectedCourse = db.Course.Find(Id);
            Save();

            if (!CurrentStudent.Courses.Contains(SelectedCourse))
            {
                CurrentStudent.Courses.Add(SelectedCourse);
                db.SaveChanges();
            }

            resultLabel2.Text = "You have been successfully enrolled.";
        }
    }
}