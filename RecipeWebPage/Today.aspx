<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Today.aspx.cs" Inherits="RecipeWebPage.Today" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("DishName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Ingredients :</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("DishIngredients") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Instructions : </strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("DishInstructions") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="211px" ImageUrl='<%# Eval("DishImage") %>' Width="422px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Rating :</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("DishRating") %>'></asp:Label>
                        / 10</td>
                </tr>
                <tr>
                    <td><strong>Date :</strong>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("CreationDate") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
