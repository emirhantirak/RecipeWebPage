<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SuggestDetail.aspx.cs" Inherits="RecipeWebPage.SuggestDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        font-size: large;
    }
    .auto-style13 {
        width: 373px;
    }
    .auto-style14 {
        width: 373px;
        text-align: left;
    }
    .auto-style15 {
        text-align: right;
    }
    .auto-style16 {
        font-size: x-large;
        text-align: right;
    }
    .auto-style17 {
        font-size: large;
        text-align: right;
    }
    .auto-style18 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<asp:Panel ID="Panel1" runat="server" Width="550px">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><span class="auto-style12">Recipe Name:</span> </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Ingredients :</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><span class="auto-style12">Instructions :</span> </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><span class="auto-style12">Image :</span></td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Owner Name :</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Owner Mail :</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="BtnSend" runat="server" CssClass="auto-style18" Text="Send" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
