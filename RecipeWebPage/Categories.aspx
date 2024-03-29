<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="RecipeWebPage.Categories" %>

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

        .auto-style18 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1"  />
                </strong></td>
                <td><strong>CATEGORY LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="540px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Categories.aspx?CategoryID=<%#Eval("CategoryID") %>&process=delete">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/pfcrcuy.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style12">
                            <a href="CategoryUpdate.aspx?CategoryID=<%#Eval("CategoryID") %>">
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
                <td><strong>ADD CATEGORY</strong></td>
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
                <td><strong>CATEOGRY NAME :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>CATEGORY ICON :</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnAdd" runat="server" CssClass="auto-style18" Text="Add" Width="100px" OnClick="BtnAdd_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
