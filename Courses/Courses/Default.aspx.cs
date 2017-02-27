using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Courses
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetConnection()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["EnrollmentContext"].ConnectionString;
        }

        public void Insert(string courseName, string instructor, string department)
        {
            SqlConnection connection = new SqlConnection(GetConnection());
            connection.Open();

            string sqlQuery = "INSERT INTO Courses.Enrollment (CourseName, Instructor, Department) VALUES (nameTextBox.Text, instructorTextBox.Text, departmentTextBox.Text)";
            connection.Close();
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=.;Initial Catalog=Courses.Enrollment;Integrated Security=True");
            connection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO Courses (CourseName, Instructor, Department) VALUES(@CourseName, @Instructor, @Department)", connection);
            command.Parameters.AddWithValue("@CourseName", nameTextBox.Text);
            command.Parameters.AddWithValue("@Instructor", instructorTextBox.Text);
            command.Parameters.AddWithValue("@Department", departmentTextBox.Text);
            
            command.ExecuteNonQuery();


            String courseName = nameTextBox.Text;
            String instructor = instructorTextBox.Text;
            String department = departmentTextBox.Text;
         

            Insert(courseName, instructor, department);


            resultLabel.Text = String.Format("The new course {0} was successfully added to the {1} department.", courseName, department);

        }
        

    }
}