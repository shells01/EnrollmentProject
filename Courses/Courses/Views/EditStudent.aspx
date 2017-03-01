<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="Courses.Views.EditStudent" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3><span class="newStyle1">Enroll in Courses</span></h3>
        <div>
            Student&#39;s Name:&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>

        <h3><span class="newStyle2">Course List:</span></h3>
        <asp:DropDownList ID="cbxCourses" runat="server" DataSourceID="CourseData" DataTextField="CourseName" DataValueField="CourseId">
        </asp:DropDownList>
        <br />
        <br />
         <asp:Button ID="btnAddCourse" runat="server" Text="Add Course" OnClick="btnAddCourse_Click" />



        <br />



        <br />
         <asp:ObjectDataSource ID="CourseData" runat="server" SelectMethod="GetCourses" TypeName="Courses.Course"></asp:ObjectDataSource>
        <br />
        <asp:Label ID="resultLabel2" runat="server"></asp:Label>
    </form>
</body>
</html>
