<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="Courses.Views.AddCourse" %>
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
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The description of my page" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h3><span class="newStyle3">Create New Course</span></h3>
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
        <asp:Button ID="btnSubmit" runat="server" Text="Add Course" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
