<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/FrontPage.Master" 
    AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="layout_padding gallery_section">
        <div class ="container">

        <div class="cart_rows">
        <asp:Label ID="Label1" runat="server" Text=" All the orders are displayed here " Font-Bold="True" Font-Size="Large"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" cssClass="mGrid" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Cart" DataKeyNames="ORDER_ID" OnRowDeleted="GridView1_RowDeleted1" Width="95%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ORDER_PRODUCT_NAME" HeaderText="Product Name" ReadOnly="True" SortExpression="ORDER_PRODUCT_NAME" />
                <asp:BoundField DataField="ORDER_PRODUCT_PRICE" HeaderText="Product Price" ReadOnly="True" SortExpression="ORDER_PRODUCT_PRICE" />
                <asp:TemplateField HeaderText="<">
                    <ItemTemplate>
                        <asp:Button ID="ButtonMinus" runat="server" Text="-" CommandArgument='<%# Eval("ORDER_ID") %>' OnClick="Minus_One"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ORDER_NUMBER" HeaderText="Number" SortExpression="ORDER_NUMBER" />
                <asp:TemplateField HeaderText=">">
                    <ItemTemplate>
                        <asp:Button ID="ButtonAdd" runat="server" Text="+" CommandArgument='<%# Eval("ORDER_ID") %>' OnClick="Add_One"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="img1" ImageUrl='<%#Eval("ORDER_PRODUCT_IMAGE") %>'
                            runat="server" AlternateText="image lost" Width="75" Height="75" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" DeleteText="Remove" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Cart" runat="server" ConnectionString="<%$ ConnectionStrings:shoestoreConnectionString2 %>" 
            SelectCommand="SELECT * FROM [carts]">
        </asp:SqlDataSource>

        <asp:Label ID="Label2" runat="server" Text="Total Price: "></asp:Label>

            <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>

        <br />

        <asp:Button ID="Button1" runat="server" Text="Pay for all" OnClick="Clear_cart" />
        </div>

        </div>



    </div>

</asp:Content>
