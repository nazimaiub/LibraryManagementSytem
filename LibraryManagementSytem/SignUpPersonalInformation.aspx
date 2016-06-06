<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUpPersonalInformation.aspx.cs" Inherits="LibraryManagementSytem.SignUpAcademicInformation" %>

<asp:Content ID="studentSignUpContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">
    <link href="css/pikaday.css" rel="stylesheet" />
    <%--<link href="css/site.css" rel="stylesheet" />--%>
    <link href="css/theme.css" rel="stylesheet" />
    <link href="css/triangle.css" rel="stylesheet" />
   
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminMasterPageContentPlaceHolder2" runat="server">
    <table class="nav-justified" style="height: 500px">
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 116px; height: 6px;">
                <h2>Sign Up</h2>
            </td>
            <td style="width: 22px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px; height: 49px;"></td>
            <td style="width: 116px; height: 49px;"><strong>Personal Information</strong></td>
            <td style="width: 22px; height: 49px;"></td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td style="width: 145px; height: 30px;"></td>
            <td style="width: 116px; height: 30px;"></td>
            <td style="width: 22px; height: 30px;">
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 145px; height: 50px;"></td>
            <td style="width: 116px; height: 50px;">
                <asp:Label ID="Label2" runat="server" Text="Email" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 22px; height: 50px;">

                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" Width="250px" placeholder="Email"></asp:TextBox>


            </td>
            <td style="height: 50px">
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Please Enter Valid Email Address" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px; height: 50px;"></td>
            <td style="width: 116px; height: 50px;">
                <asp:Label ID="Label6" runat="server" Text="Phone No" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 22px; height: 50px;">

                <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control" Width="250px" placeholder="Phone Number"></asp:TextBox>


            </td>
            <td style="width: 259px; height: 50px;">
                <asp:RequiredFieldValidator ID="phoneRequiredFieldValidator" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px; height: 75px;"></td>
            <td style="width: 116px; height: 75px;">
                <asp:Label ID="Label7" runat="server" Text="Address" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 22px; height: 75px;">

                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control" Width="250px" placeholder="Address" Height="61px" MaxLength="150"></asp:TextBox>


            </td>
            <td style="height: 75px">
                <asp:RequiredFieldValidator ID="addessRequiredFieldValidator" runat="server" ControlToValidate="addressTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px; height: 50px"></td>
            <td style="width: 116px; height: 50px">
                <asp:Label ID="Label8" runat="server" Text="Date Of Birth" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 22px; height: 50px">

                <asp:TextBox ID="dobTextBox" CssClass="form-control" runat="server" ClientIDMode="Static" Width="250px" placeholder="Date Of Birth"></asp:TextBox>

            </td>
            <td style="height: 50px">
                <asp:RequiredFieldValidator ID="dobRequiredFieldValidator0" runat="server" ControlToValidate="dobTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 52px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>--%>
        <tr>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 116px">&nbsp;</td>
            <td style="width: 22px">
                <asp:Button CssClass="btn btn-success" ID="signUpButton" runat="server" Text="SignUp" Height="35px" Width="250px" OnClick="signUpButton_Click" />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <script src="pikaday.js"></script>
     <script type="text/javascript">

         var picker = new Pikaday(
             {
                 field: document.getElementById('dobTextBox'),
                 minDate: new Date('1900-01-01'),
                 maxDate: new Date('2020-12-31'),
                 firstDay: 1,
                 yearRange: [1900, 2020],
                 numberOfMonths: 1,
                 theme: 'triangle-theme'
             });
     </script>
</asp:Content>

