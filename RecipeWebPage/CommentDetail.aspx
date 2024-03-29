<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CommentDetail.aspx.cs" Inherits="RecipeWebPage.CommentDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        margin-left: 40px;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        font-weight: bold;
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
        <td class="auto-style12"><strong>Name &amp; Surname :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtName" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>E-Mail :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtMail" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Content :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtContent" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Dish :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtDish" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style11"><strong>
            <asp:Button ID="BtnSubmit" runat="server" CssClass="auto-style13" OnClick="BtnSubmit_Click" Text="Submit" />
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
</table>
</asp:Content>
