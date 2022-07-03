<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Group_Project.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ZXX" HeaderText="ZXX" SortExpression="ZXX" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [ZXX] FROM [Table_1]"></asp:SqlDataSource>

    <asp:Image ID="ProductImage" runat="server" />
    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Add to cart" />

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</asp:Content>
