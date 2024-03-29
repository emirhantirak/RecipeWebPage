<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Suggest.aspx.cs" Inherits="RecipeWebPage.Suggest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: right;
            font-weight: bold;
            width: 166px;
        }
        .auto-style6 {
            margin-left: 75px;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Recipe Name :</td>
            <td>
                <asp:TextBox ID="TxtRecipeName" runat="server" Width="300px" CssClass="tbStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Ingredients :</td>
            <td>
                <asp:TextBox ID="TxtIngredients" runat="server" Height="80px" TextMode="MultiLine" Width="300px" CssClass="tbStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Instructions :</td>
            <td>
                <asp:TextBox ID="TxtInstructions" runat="server" Height="160px" TextMode="MultiLine" Width="300px" CssClass="tbStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Image :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="tbStyle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Recipe Owner :</td>
            <td>
                <asp:TextBox ID="TxtOwner" runat="server" Width="300px" CssClass="tbStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Owner E-mail :</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="300px" CssClass="tbStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="BtnSUggest" runat="server" BackColor="#FF66FF" CssClass="fbStyle" Height="50px" style="font-weight: 700" Text="Suggest Recipe" Width="150px" OnClick="BtnSUggest_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
