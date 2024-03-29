<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="RecipeWebPage.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
            color: #FFCC99;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>Name : </strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CommenterName") %>'></asp:Label>
                    </td>
                </tr>
                <strong>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000"><strong>Comment : </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("CommentContent") %>'></asp:Label>
                        <strong>&nbsp;&nbsp; -&nbsp;&nbsp; </strong></td>
                </tr>
                </strong>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("CommentDate") %>'></asp:Label>
                </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <br />
        <div style="background-color: #FFFFF" class="auto-style7">Comment Area</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Name Surname: </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">E-Mail :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Comment : </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnComment" runat="server" CssClass="auto-style9" OnClick="BtnComment_Click" Text="Comment" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>
