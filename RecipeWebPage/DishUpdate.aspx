<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DishUpdate.aspx.cs" Inherits="RecipeWebPage.DishUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        margin-left: 40px;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style14 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>DISH NAME :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtDishUpdate" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>INGREDIENTS :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtIngUpdate" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>INSTRUCTIONS :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtInsUpdate" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>CATEGORY :</strong></td>
        <td class="auto-style11">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">
            <asp:Button ID="BtnUpdate" runat="server" CssClass="auto-style14" OnClick="BtnUpdate_Click" Text="UPDATE" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13"><strong>
            <asp:Button ID="BtnChoose" runat="server" CssClass="auto-style14" OnClick="BtnChoose_Click" Text="CHOOSE" Width="100px" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
</table>
</asp:Content>
