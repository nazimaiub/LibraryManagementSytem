<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentListUI.aspx.cs" Inherits="LibraryManagementSytem.StudentListUI" %>
<asp:Content ID="studentListContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminMasterPageContentPlaceHolder2" runat="server">
    <h2 style="text-align:match-parent">Student List</h2>
    <asp:GridView ID="studentListGridView" runat="server" Height="391px"
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
</asp:Content>
