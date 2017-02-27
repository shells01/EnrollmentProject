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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h3><span class="newStyle2">Add Course Form</span></h3>
        <br />
        Course
        Name:&nbsp;
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Instructor:&nbsp;
        <asp:TextBox ID="instructorTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Department:&nbsp;
        <asp:TextBox ID="departmentTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submitButton" runat="server" Text="Add Course" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:ObjectDataSource ID="CourseObjectDataSource" runat="server" SelectMethod="GetCourses" TypeName="Courses.CourseRepository"></asp:ObjectDataSource>
        <br />
        <asp:GridView ID="CourseGridView" runat="server" AutoGenerateColumns="False" BorderStyle="Double" DataSourceID="CourseObjectDataSource" OnSelectedIndexChanged="CourseGridView_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                <asp:BoundField DataField="Instructor" HeaderText="Instructor" SortExpression="Instructor" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
