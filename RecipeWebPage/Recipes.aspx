<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="RecipeWebPage.Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }

        .auto-style17 {
            width: 35px;
            font-size: x-large;
        }

        .auto-style19 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style15 {
            width: 23px;
        }

        .auto-style16 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td><strong>RECIPE LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="540px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("RecipeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="SuggestDetail.aspx?RecipeID<%#Eval("RecipeID") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/7s7di9p.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
