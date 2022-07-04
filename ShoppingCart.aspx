<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/FrontPage.Master" 
    AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <center>This is the home page of the website.</center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="layout_padding gallery_section">
        
        <asp:Label ID="Label1" runat="server" Text="Label"> All the orders are displayed here </asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Cart">
            <Columns>
                <asp:BoundField DataField="ORDER_USERNAME" HeaderText="USERNAME" SortExpression="ORDER_USERNAME" />
                <asp:BoundField DataField="ORDER_PRODUCT_NAME" HeaderText="PRODUCT NAME" SortExpression="ORDER_PRODUCT_NAME" />
                
                <asp:BoundField DataField="ORDER_PRODUCT_PRICE" HeaderText="PRODUCT PRICE" SortExpression="ORDER_PRODUCT_PRICE" />
                <asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER NUMBER" SortExpression="ORDER_NUMBER" />
                <asp:BoundField DataField="ORDER_PRODUCT_IMAGE" HeaderText="ORDER_PRODUCT_IMAGE" SortExpression="ORDER_PRODUCT_IMAGE" />
                <asp:TemplateField>
                    <ItemTemplate>
                     <asp:TextBox runat="server" ID="textbox1" Text='1' AutoPostBack="True" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button runat="server" ID="button1" CommandArgument='12' Text="Delete"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Cart" runat="server" ConnectionString="<%$ ConnectionStrings:shoestoreConnectionString %>" SelectCommand="SELECT * FROM [carts] WHERE ([ORDER_USERNAME] = @ORDER_USERNAME)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="Bob" Name="ORDER_USERNAME" SessionField="Username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Label ID="Label2" runat="server" Text="Total Price: "></asp:Label>

        <asp:Button ID="Button1" runat="server" Text="Pay for all" OnClick="Clear_cart" />

    </div>

</asp:Content>
