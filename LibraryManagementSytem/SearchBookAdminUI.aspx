<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SearchBookAdminUI.aspx.cs" Inherits="LibraryManagementSytem.SearchBookAdminUI" %>

<asp:Content ID="SearchContent" ContentPlaceHolderID="adminMasterPageContentPlaceHolder" runat="server">




    <%--<table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Search Text"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="searchTextBox" runat="server" Height="17px" Width="325px"></asp:TextBox></td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Search By"></asp:Label></td>


                <td>
                    <asp:DropDownList ID="searchTypeDropDownList" runat="server" Height="50px" Width="240px">
                    </asp:DropDownList></td>

                <td>
                    <asp:Button ID="searchButton" runat="server" Text="Button" Width="94px" /></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Search Result"></asp:Label></td>
            </tr>

        </table>--%>
    <div style="margin-left: 100px">
        <table class="nav-justified">
            <tr>
                <td style="width: 42px; height: 82px"></td>
                <td style="width: 171px; height: 82px"><h1>Search</h1></td>
                <td class="modal-sm" style="width: 324px; height: 82px"></td>
                <td style="height: 82px"></td>
            </tr>
            <tr>
                <td style="width: 42px; height: 51px"></td>
                <td style="width: 171px; height: 51px">
        <asp:Label ID="Label1" runat="server" Text="Search Text" Width="67%" CssClass="control-label"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 324px; height: 51px"><asp:TextBox ID="searchTextBox" runat="server" Width="92%" CssClass="form-control" placeholder="Search Text"></asp:TextBox>
                </td>
                <td style="height: 51px"></td>
            </tr>
            <tr>
                <td style="width: 42px; height: 51px"></td>
                <td style="width: 171px; height: 51px">
        <asp:Label ID="Label2" runat="server" Text="Search By " Width="65%"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 324px; height: 51px">
        <asp:DropDownList ID="searchTypeDropDownList" runat="server" Width="33%" CssClass="form-control">
            <asp:ListItem Value="title">Title</asp:ListItem>
            <asp:ListItem Value="author">Author</asp:ListItem>
            <asp:ListItem>student</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td style="height: 51px"></td>
            </tr>
            <tr>
                <td style="height: 30px; width: 42px"></td>
                <td style="height: 30px; width: 171px"></td>
                <td style="height: 30px; width: 324px"></td>
                <td style="height: 30px"></td>
            </tr>
            <tr>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 171px">&nbsp;</td>
                <td class="modal-sm" style="width: 324px">
        <asp:Button ID="SearchButton" runat="server" Text="Search" Width="45%"
            OnClick="searchButton_Click" Height="34px" CssClass="btn btn-success" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 171px">&nbsp;</td>
                <td class="modal-sm" style="width: 324px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 171px"><strong>Search Result</strong></td>
                <td class="modal-sm" style="width: 324px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td style="width: 35px">&nbsp;</td>
                <td class="modal-lg" style="width: 825px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 35px">&nbsp;</td>
                <td class="modal-lg" style="width: 825px">
        <asp:GridView ID="searchResultGridView" runat="server" Height="166px"
            Width="606px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    <%--<asp:GridView ID="GridView1" runat="server" Width="509px">
        </asp:GridView>--%>
</asp:Content>
