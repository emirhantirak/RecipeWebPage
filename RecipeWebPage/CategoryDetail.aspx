<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CategoryDetail.aspx.cs" Inherits="RecipeWebPage.CategoryDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style7"><strong><a href="Details.aspx?DishID=<%#Eval("DishID") %>">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("DishName") %>'></asp:Label>
                        </a></strong></td>
                </tr>
                <tr>
                    <td><strong>Ingredients : </strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("DishIngredients") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Instructions : </strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text='<%# Eval("DishInstructions") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl='<%# Eval("DishImage") %>' Width="410px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Rating : </strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("CreationDate") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Date : </strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("DishRating") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #800000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
