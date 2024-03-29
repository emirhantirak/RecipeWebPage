<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AboutUsAdmin.aspx.cs" Inherits="RecipeWebPage.AboutUsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            background-color: #CCCCCC;
        }

        .auto-style17 {
            width: 35px;
            font-size: x-large;
        }

        .auto-style14 {
            font-weight: bold;
        }

        .auto-style15 {
            width: 23px;
        }

        .auto-style16 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style18 {
        margin-left: 40px;
    }
    .auto-style19 {
        text-align: center;
        margin-left: 40px;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>ABOUT US&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" Width="536px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Text="UPDATE" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
