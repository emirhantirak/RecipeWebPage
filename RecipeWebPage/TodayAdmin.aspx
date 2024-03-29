<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TodayAdmin.aspx.cs" Inherits="RecipeWebPage.TodayAdmin" %>

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
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </strong></td>
                <td><strong>DISH LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="540px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("DishName") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="DishUpdate.aspx?DishID=<%#Eval("DishID") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/7s7di9p.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


