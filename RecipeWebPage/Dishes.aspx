<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dishes.aspx.cs" Inherits="RecipeWebPage.Dishes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }

        .auto-style12 {
            text-align: right;
        }

        .auto-style13 {
            font-size: large;
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

        .auto-style17 {
            width: 35px;
            font-size: x-large;
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
                <td><strong>DISH LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="540px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("DishName") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Dishes.aspx?DishID=<%#Eval("DishID") %>&process=delete">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/pfcrcuy.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style12">
                            <a href="DishUpdate.aspx?DishID=<%#Eval("DishID") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/gnzc108.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" Style="margin-top: 15px;">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td><strong>ADD DISH</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>DISH NAME :</strong></td>
                <td>
                    <asp:TextBox ID="TxtDishName" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>INGREDIENTS :</strong></td>
                <td>
                    <asp:TextBox ID="TxtIngredients" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>INSTRUCTIONS :</strong></td>
                <td>
                    <asp:TextBox ID="TxtInstructions" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>CATEGORY :</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Button ID="BtnAddDish" runat="server" CssClass="auto-style14" Text="ADD" OnClick="BtnAddDish_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

