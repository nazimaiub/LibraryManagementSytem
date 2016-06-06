<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentBookBorrowListUI.aspx.cs" Inherits="LibraryManagementSytem.StudentBookBorrowListUI" %>
<asp:Content ID="borrowingHistoryContent" ContentPlaceHolderID="studentMasterPageContentPlaceHolder" runat="server">
    <div style="margin-left: 100px">
            <h2 style="text-align:match-parent">Book List</h2>
            <p style="text-align:match-parent">
                <asp:Label ID="msgLabel" runat="server"></asp:Label>
            </p>
            <asp:GridView ID="bookBorrowListGridView" runat="server" Height="391px"
                Style="margin-top: 0px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
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
