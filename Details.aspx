<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Group_Project.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Image ID="ProductImage" runat="server" />
    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Add to cart" />

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</asp:Content>
