<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddBookUIAdmin.aspx.cs" Inherits="LibraryManagementSytem.AddBookUIAdmin" %>

<asp:Content ID="addBookContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">
    &nbsp;
        <br />


    <table class="nav-justified">
        <tr>
            <td style="width: 87px"></td>
            <td style="width: 136px">
                <h2>Add Book</h2>
            </td>
        </tr>
        <tr style="height: 40px">
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 136px">
                
            </td>
            <td style="width: 191px"><asp:Label ID="msgLabel" runat="server"></asp:Label></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 87px; height: 70px;"></td>
            <td style="width: 136px; height: 70px;">
                <asp:Label ID="Label1" runat="server" Text="Book Name:" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 191px; height: 60px;">
                <asp:TextBox ID="bookNameTextBox" runat="server" CssClass="form-control" placeholder="Book Name" Width="275px"></asp:TextBox>
            </td>
            <td style="height: 60px">
                <asp:RequiredFieldValidator ID="bookNameRequiredFieldValidator" runat="server"
                    ControlToValidate="bookNameTextBox" ErrorMessage="Insert your book name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 70px"></td>
        </tr>
        <tr style="height: 70px">
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 136px">
                <asp:Label ID="Label2" runat="server" Text="Author:" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 191px">
                <asp:TextBox ID="authorTextBox"
                    runat="server" CssClass="form-control" placeholder="Author Name" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="authorRequiredFieldValidator" runat="server"
                    ControlToValidate="authorTextBox" ErrorMessage="Insert your author name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr style="height: 70px">
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 136px">
                <asp:Label ID="Label3" runat="server" Text="Edition:" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 191px">
                <asp:TextBox
                    ID="editionTextBox" runat="server" CssClass="form-control" placeholder="Edition" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="editionRequiredFieldValidator" runat="server"
                    ControlToValidate="editionTextBox" ErrorMessage="Insert book edition" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr style="height: 70px">
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 136px">
                <asp:Label ID="Label4" runat="server"
                    Text="Total Copies:" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 191px">
                <asp:TextBox ID="noOfCopyTextBox" runat="server" CssClass="form-control" placeholder="Number of Copy " Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="noOfCopyRequiredFieldValidator" runat="server"
                    ControlToValidate="noOfCopyTextBox" ErrorMessage="Insert your copy number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 87px; height: 40px;"></td>
            <td style="width: 136px; height: 40px;"></td>
            <td style="width: 191px; height: 40px;"></td>
            <td style="height: 40px"></td>
            <td style="height: 40px"></td>
        </tr>
        <tr>
            <td style="width: 87px">&nbsp;</td>
            <td style="width: 136px">&nbsp;</td>
            <td style="width: 191px">
                <asp:Button ID="AddButton" runat="server" Text="Add Book" OnClick="AddButton_Click" CssClass="btn btn-success" Width="275px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
