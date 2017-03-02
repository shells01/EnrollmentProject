# CourseEnrollment Project

This is an ASP.NET web application for creating and adding new school courses, as well as enrolling students in courses. It was written with the Entity Framework Code First method.
- There are 2 tables in the database: A table for courses and one for students. A third table shows which students are enrolled in which courses. 
- The Default web form takes the user to a page with 2 links: 1) a form to create and add a new course to the database and 2) a form for students to enroll in courses, and the page also shows a table with all the existing courses, the course instructors, and the department the course belongs to.
- The AddCourse form allows the user to create a new course and add it to the database.
- The EditStudent form allows a student to enroll in a course. If the student's name does not exist in the database, then the student is also added to the Student table. 



