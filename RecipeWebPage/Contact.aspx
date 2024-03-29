<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RecipeWebPage.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style7 {
        text-align: center;
        font-size: x-large;
        background-color: #CCCCFF;
    }
        .auto-style8 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style7" colspan="2"><strong>Message Panel</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Name Surname : </strong></td>
        <td>
            <asp:TextBox ID="TxtSender" runat="server" Height="20px" Width="200px" CssClass="tbStyle"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>E-Mail :</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="200px" CssClass="tbStyle"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Message Subject :</strong></td>
        <td>
            <asp:TextBox ID="TxtSubject" runat="server" Height="20px" Width="200px" CssClass="tbStyle"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Message :</strong></td>
        <td>
            <asp:TextBox ID="TxtMessage" runat="server" Height="100px" Width="200px" CssClass="tbStyle" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="BtnSubmit" runat="server" CssClass="auto-style8" Text="Submit" Width="200px" OnClick="BtnSubmit_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
