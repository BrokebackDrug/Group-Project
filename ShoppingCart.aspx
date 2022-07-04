<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/FrontPage.Master" 
    AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <center><h1>This is the home page of the website.</h1></center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlShoppingCart">
        <Columns>
            <asp:BoundField DataField="Goods_id" HeaderText="Goods_id" SortExpression="Goods_id" />
            <asp:BoundField DataField="Goods_name" HeaderText="Goods_name" SortExpression="Goods_name" />
            <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlShoppingCart" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [Shopping_cart]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
