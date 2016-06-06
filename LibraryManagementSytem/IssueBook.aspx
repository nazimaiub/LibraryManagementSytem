<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="LibraryManagementSytem.IssueBook" %>

<asp:Content ID="searchContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 42px"></td>
            <td style="width: 138px">
                <h3>Search</h3>
            </td>
        </tr>
        <%--<tr>
            <td style="width: 87px; height: 31px"></td>
        </tr>--%>
        <tr>
            <td style="height: 46px; width: 87px"></td>
            <td class="modal-sm" style="height: 46px; width: 138px">
              
                    <asp:Label ID="searchTextLabel" runat="server" Text="Search Text" CssClass="control-label"></asp:Label>
            </td>
            <td style="height: 46px; width: 310px">
                <asp:TextBox ID="searchTextBox" runat="server" Width="372px" ValidationGroup="searchValidationGroup" CssClass="form-control" placeholder="Search Text"></asp:TextBox>
            </td>
            <td style="height: 46px"></td>
        </tr>
        <tr>
            <td style="width: 42px; height: 45px"></td>
            <td class="modal-sm" style="height: 45px; width: 138px">
               
                    <asp:Label ID="searhByLabel" runat="server" Text="Search By" CssClass="control-label"></asp:Label>
            </td>
            <td style="height: 45px; width: 310px">
                <asp:DropDownList ID="searchTypeDropDownList" runat="server" Height="35px" Width="130px" ValidationGroup="searchValidationGroup" CssClass="form-control">
                    <asp:ListItem Value="title">Title</asp:ListItem>
                    <asp:ListItem Value="author">Author</asp:ListItem>
                    <asp:ListItem>student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 45px"></td>
        </tr>
        <tr>
            <td style="width: 42px; height: 5px">&nbsp;</td>
            <td class="modal-sm" style="height: 5px; width: 138px"></td>
            <td style="height: 5px; width: 310px">
                <br />
                <asp:Button ID="searchButton" runat="server" Text="Search" Width="102px" OnClick="searchButton_Click" ValidationGroup="searchValidationGroup" CssClass="btn btn-success" />
            </td>
            <td style="height: 5px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 87px; height: 3px"></td>
        </tr>
        <tr>
            <td style="height: 5px; width: 87px">&nbsp;</td>
            <td class="modal-sm" style="height: 5px; width: 138px">
               
                    <asp:Label ID="searchResultLabel" runat="server" Text="Search Result"></asp:Label>
            </td>
            <td style="height: 5px; width: 310px"></td>
            <td style="height: 5px"></td>
        </tr>
    </table>


    <table class="nav-justified">
        <tr>
            <td style="height: 20px; width: 89px"></td>
            <td style="height: 20px"></td>
        </tr>

        <tr>
            <td style="width: 89px">&nbsp; &nbsp;</td>
            <td>
                <asp:GridView ID="searchResultGridView" runat="server" Width="481px">
                </asp:GridView>
                <br />
   
            </td>
        </tr>

    </table>

</asp:Content>
<asp:Content ID="issueContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder2" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="height: 39px; width: 89px"></td>
            <td style="height: 39px">
                <h3>Issue Book</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 89px; height: 31px">&nbsp;</td>
            <td style="width: 106px">
                &nbsp;</td>
            <td style="width: 242px">
                <asp:Label ID="msgLabel" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 31px">&nbsp;</td>
            <td style="width: 138px">
                
                    <asp:Label ID="studentIdLabel" runat="server" Text="Student ID" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="studentIdTextBox" runat="server" Width="168px" ValidationGroup="issueValidationGroup" placeholder="Student ID"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="studentIdRequiredFieldValidator" runat="server" ErrorMessage="Insert Student Id" ControlToValidate="studentIdTextBox" ForeColor="#CC0000" ValidationGroup="issueValidationGroup"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 75px"></td>
            <td style="width: 138px; height: 75px;">
              
                    <asp:Label ID="bookIdLabel" runat="server" Text="Book ID" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 242px; height: 75px;">
                <asp:TextBox ID="bookIdTextBox" runat="server" Width="168px" ValidationGroup="issueValidationGroup" placeholder="Book ID"></asp:TextBox>
            </td>
            <td style="height: 75px">
                <asp:RequiredFieldValidator ID="bookIdRequiredFieldValidator" runat="server" ErrorMessage="Insert Book Id" ControlToValidate="bookIdTextBox" ForeColor="#CC0000" ValidationGroup="issueValidationGroup"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 75px"></td>
        </tr>

        <tr>
            <td style="width: 89px; height: 31px">&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 138px">
                <asp:Button ID="IssueButton" runat="server" Text="Issue" Width="102px" ValidationGroup="issueValidationGroup" OnClick="IssueButton_Click" CssClass="btn btn-success" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
