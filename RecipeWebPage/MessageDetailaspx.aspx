<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetailaspx.aspx.cs" Inherits="RecipeWebPage.MessageDetailaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><strong>Message Sender :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Message Title :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Message Email :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Message Content :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
