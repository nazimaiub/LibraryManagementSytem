<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentProfileUI.aspx.cs" Inherits="LibraryManagementSytem.StudentProfileUI" %>
<asp:Content ID="studentProfileContent" ContentPlaceHolderID="studentMasterPageContentPlaceHolder" runat="server">

    <table class="nav-justified">
       
        <tr>
            <td class="modal-sm" style="width: 238px; height: 84px"></td>
            <td style="width: 179px; height: 84px">
                <asp:Image src="no-profile-img.gif" ID="Image1" runat="server" CssClass="img-circle" Height="119px" Width="133px" />
            </td>
            <td style="height: 84px; width: 211px"></td>
            <td style="height: 84px"></td>
            <td style="height: 84px"></td>
        </tr>
       
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
            </td>
            <td style="height: 50px; width: 211px"></td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Student ID"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="studentIdTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="studentNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label5" runat="server" Text="Cgpa"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="cgpaTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 31px">
                <asp:Label ID="Label7" runat="server" Text="Department"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="departmentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td style="height: 50px; width: 211px">
                <asp:TextBox ID="dobTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px; height: 50px"></td>
            <td style="width: 179px; height: 50px">
                &nbsp;</td>
            <td style="height: 29px; width: 211px">
                <br />
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px">&nbsp;</td>
            <td style="width: 179px">&nbsp;</td>
            <td class="modal-sm" style="width: 211px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px">&nbsp;</td>
            <td style="width: 179px">&nbsp;</td>
            <td class="modal-sm" style="width: 211px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px">&nbsp;</td>
            <td style="width: 179px">&nbsp;</td>
            <td class="modal-sm" style="width: 211px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 238px">&nbsp;</td>
            <td style="width: 179px">&nbsp;</td>
            <td class="modal-sm" style="width: 211px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="studentProfileContentContent2" ContentPlaceHolderID="studentMasterPageContentPlaceHolder2" runat="server">
</asp:Content>
