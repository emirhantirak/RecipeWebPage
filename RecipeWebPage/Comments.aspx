<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="RecipeWebPage.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }

        .auto-style17 {
            width: 35px;
            font-size: x-large;
        }

        .auto-style15 {
            width: 23px;
        }

        .auto-style16 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style13 {
            font-size: large;
        }

        .auto-style12 {
            text-align: right;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style19 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td><strong>APPROVED COMMENT LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="540px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("CommenterName") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/pfcrcuy.png" Width="30px" />
                        </td>
                        <td class="auto-style12">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/gnzc108.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11">
        <table class="auto-style6">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button5_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style18" Height="30px" OnClick="Button6_Click" Text="-" Width="30px" />
                    </strong></td>
                <td><strong>DISAPPROVED COMMENT LIST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="540px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("CommenterName") %>'></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/pfcrcuy.png" Width="30px" />
                    </td>
                    <td class="auto-style12">
                        <a href="CommentDetail.aspx?CommentID=<%#Eval("CommentID") %>">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="https://i.hizliresim.com/gnzc108.png" Width="30px" />
                        </a>

                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
