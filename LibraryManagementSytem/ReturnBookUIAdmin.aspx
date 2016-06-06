<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ReturnBookUIAdmin.aspx.cs" Inherits="LibraryManagementSytem.ReturnBookUIAdmin" %>
<asp:Content ID="returnBookContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">

    <p>
        <br />
    </p>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminMasterPageContentPlaceHolder2" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 63px; height: 42px"></td>
            <td style="width: 142px; height: 42px"><h3>Return Book</h3></td>
            <td style="width: 196px; height: 42px"></td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="width: 63px; height: 23px"></td>
            <td style="height: 23px; width: 142px"></td>
            <td style="height: 23px; width: 196px">
                <asp:Label ID="msgLabel" runat="server" Text=""></asp:Label>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 63px; height: 66px;"></td>
            <td style="width: 142px; height: 66px;">
                <strong>
                    <asp:Label ID="studentIdLabel" runat="server" Text="Student ID" CssClass="control-label"></asp:Label></td>
            <td style="width: 196px; height: 66px;">
                <asp:TextBox ID="studentIdTextBox" runat="server" Width="168px" CssClass="form-control" placeholder="Student ID"></asp:TextBox>
            </td>
            <td style="height: 66px">
                <asp:RequiredFieldValidator ID="studentIdRequiredFieldValidator" runat="server" BorderStyle="None" ControlToValidate="studentIdTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 63px; height: 44px;"></td>
            <td style="width: 142px; height: 44px;">
                <strong>
                    <asp:Label ID="bookIdLabel" runat="server" Text="Book ID" CssClass="control-label"></asp:Label></strong></td>
            <td style="width: 196px; height: 44px;">
                <asp:TextBox ID="bookIdTextBox" runat="server" Width="168px" CssClass="form-control" placeholder="Book ID"></asp:TextBox>
            </td>
            <td style="height: 44px">
                <asp:RequiredFieldValidator ID="bookIdRequiredFieldValidator" runat="server" ControlToValidate="bookIdTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 63px">&nbsp;</td>
            <td style="width: 142px">&nbsp;</td>
            <td style="width: 196px">
                <br />
                <br />
                <asp:Button ID="returnButton" runat="server" Height="30px" OnClick="returnButton_Click" Text="Return Book" Width="117px" CssClass="btn btn-success" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
