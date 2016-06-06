<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUpUIFromAdmin.aspx.cs" Inherits="LibraryManagementSytem.SignUpUIFromAdmin" %>

<asp:Content ID="signUpContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
   <%-- <link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <table class="nav-justified" style="height:500px">
        <tr>
            <td style="width: 144px; height: 9px;"></td>
            <td style="width: 163px; height: 9px;"><h2>Sign Up</h2></td>
            <td style="width: 212px; height: 9px;"></td>
            <td style="height: 9px"></td>
            <td style="height: 9px"></td>
        </tr>
        
        <tr>
            <td style="width: 144px; height: 6px;">&nbsp;</td>
            <td style="width: 163px; height: 6px;"><strong>Academic Information</strong></td>
            <td style="width: 212px; height: 6px;">&nbsp;</td>
            <td style="height: 6px">&nbsp;</td>
            <td style="height: 6px">&nbsp;</td>
        </tr>
        
        <tr>

            <td style="width: 144px; height: 37px;"></td>
            <td style="width: 163px; height: 37px;">
                <asp:Label ID="StudentidLabel" CssClass="control-label" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td style="width: 212px; height: 37px;">
                <div id="studentIdDiv" runat="server" style="width: 212px">
               
                <asp:TextBox  runat="server" ID="studentIdTextBox" aria-describedby="studentIdVerifyMsg" AutoPostBack="True" OnTextChanged="studentIdTextBox_TextChanged"  placeholder="Student ID" CssClass="form-control" Width="212px"></asp:TextBox>
                    <span id="studentIdSpan" CssClass="form-control" runat="server" aria-hidden="true"> </span>
                    <span id="studentIdVerifyMsg" runat="server"></span>
                   
                </div>
               
               
               
            </td>
            <td style="height: 37px">
                <asp:Label ID="StudentidErrorLabel" CssClass="control-label" runat="server" ForeColor="#CC0000"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="studentIdRequiredFieldValidator" runat="server" ControlToValidate="studentIdTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 37px"></td>
        </tr>
        <tr>
            <td style="height: 33px; width: 144px"></td>
            <td style="width: 163px; height: 33px;">
                <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td style="height: 33px; width: 212px;">
                
                <asp:TextBox ID="studentNameTextBox" runat="server" CssClass="form-control" Width="207px" placeholder="Student Name"></asp:TextBox>
                  

            </td>
            <td style="height: 33px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="studentNameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 33px"></td>
        </tr>
        

        <tr>
            <td style="width: 144px; height: 19px"></td>
            <td style="width: 163px; height: 19px">
                <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
            </td>
            <td style="width: 212px; height: 19px;">
                <asp:DropDownList ID="departmentDropDownList" runat="server" Height="40px" Width="122px" CssClass="form-control">
                    <asp:ListItem Value="arch">ARCH</asp:ListItem>
                    <asp:ListItem Value="bba">BBA</asp:ListItem>
                    <asp:ListItem Value="cs">CS</asp:ListItem>
                    <asp:ListItem Value="cse">CSE</asp:ListItem>
                    <asp:ListItem Value="eee">EEE</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px"></td>
            <td style="width: 163px; height: 19px;">
                <asp:Label ID="Label5" runat="server" Text="Cgpa"></asp:Label>
            </td>
            <td style="height: 19px; width: 212px;">
                <asp:TextBox ID="cgpaTextBox" runat="server" CssClass="form-control" Width="213px"  placeholder="Cgpa"></asp:TextBox>
            </td>
            <td style="height: 19px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cgpaTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="cgpaRangeValidator" runat="server" ControlToValidate="cgpaTextBox" ErrorMessage="Please Insert 0 to 4" ForeColor="#CC0000" MaximumValue="4" MinimumValue="0"></asp:RangeValidator>
            </td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px"></td>
            <td style="width: 163px; height: 19px;">
                Password</td>
            <td style="height: 19px; width: 212px;">
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" TextMode="Password" Width="211px"  placeholder="Password"></asp:TextBox>
            </td>
            <td style="height: 19px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px"></td>
            <td style="width: 163px; height: 19px">
                Retype password</td>
            <td style="width: 212px; height: 19px;">
                <asp:TextBox ID="RetypePasswordTextBox" runat="server" CssClass="form-control" TextMode="Password" Width="213px"  placeholder="Retype Password"></asp:TextBox>
            </td>
            <td style="height: 19px">
                <asp:CompareValidator ID="passwordCompareValidator" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="RetypePasswordTextBox" ErrorMessage="Password Dont Match" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px">&nbsp;</td>
            <td style="width: 163px; height: 19px">&nbsp;</td>
            <td style="width: 212px">
                <asp:Button  CssClass="btn btn-success" ID="nextButton" runat="server" Text="Next" Height="35px" Width="211px" OnClick="nextButton_Click" Enabled="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px">;</td>
            <td style="width: 163px; height: 19px"></td>
            <td style="width: 212px">
                
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>
   
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminMasterPageContentPlaceHolder2" runat="server">
</asp:Content>
