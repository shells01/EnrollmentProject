<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Courses.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle3 {
            font-size: x-large;
        }
        .newStyle4 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <span class="newStyle4">
    <a href="Views/AddCourse.aspx">Create New Course</a></span> <span class="newStyle4">
    <br />
    <a href="Views/EditStudent.aspx">Enroll in Courses</a></span><br />
        <br />
        List of Courses:
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="CourseData">
                <Columns>
                <%--    <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />--%>
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:BoundField DataField="Instructor" HeaderText="Instructor" SortExpression="Instructor" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:HyperLinkField Text ="Edit" DataNavigateUrlFields="CourseId" DataNavigateUrlFormatString ="Views/EditCourse?CourseId={0}" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:ObjectDataSource ID="CourseData" runat="server" SelectMethod="GetCourses" TypeName="Courses.Course"></asp:ObjectDataSource>
    </form>
</body>
</html>
