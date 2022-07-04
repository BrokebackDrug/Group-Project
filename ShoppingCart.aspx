<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/FrontPage.Master" 
    AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <center>This is the home page of the website.</center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Orders">
        <Columns>
            <asp:BoundField DataField="ORDER_ID" HeaderText="ORDER_ID" InsertVisible="False" ReadOnly="True" SortExpression="ORDER_ID" />
            <asp:BoundField DataField="ORDER_USERNAME" HeaderText="ORDER_USERNAME" SortExpression="ORDER_USERNAME" />
            <asp:BoundField DataField="ORDER_PRODUCT_NAME" HeaderText="ORDER_PRODUCT_NAME" SortExpression="ORDER_PRODUCT_NAME" />
            <asp:BoundField DataField="ORDER_PRODUCT_ID" HeaderText="ORDER_PRODUCT_ID" SortExpression="ORDER_PRODUCT_ID" />
            <asp:BoundField DataField="ORDER_PRODUCT_PRICE" HeaderText="ORDER_PRODUCT_PRICE" SortExpression="ORDER_PRODUCT_PRICE" />
            <asp:BoundField DataField="ORDER_PRODUCT_TYPE" HeaderText="ORDER_PRODUCT_TYPE" SortExpression="ORDER_PRODUCT_TYPE" />
            <asp:BoundField DataField="ORDER_PRODUCT_IMAGE" HeaderText="ORDER_PRODUCT_IMAGE" SortExpression="ORDER_PRODUCT_IMAGE" />
            <asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER_NUMBER" SortExpression="ORDER_NUMBER" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_Orders" runat="server" ConnectionString="<%$ ConnectionStrings:shoestoreConnectionString %>" SelectCommand="SELECT * FROM [order]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
