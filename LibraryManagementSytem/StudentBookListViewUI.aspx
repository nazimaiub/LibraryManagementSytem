<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentBookListViewUI.aspx.cs" Inherits="LibraryManagementSytem.StudentBookListViewUI" %>
<asp:Content ID="studentBookListViewContent" ContentPlaceHolderID="studentMasterPageContentPlaceHolder" runat="server">
    <div style="margin-left: 100px">
            <h2 style="text-align:match-parent">Book List</h2>
            <asp:GridView ID="bookListGridView" runat="server" Height="391px"
                Style="margin-top: 0px" Width="626px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="studentMasterPageContentPlaceHolder2" runat="server">
</asp:Content>
