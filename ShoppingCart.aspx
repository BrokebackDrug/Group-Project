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
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Cart" DataKeyNames="ORDER_ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="ORDER_USERNAME" HeaderText="Username" ReadOnly="True" SortExpression="ORDER_USERNAME" />
                <asp:BoundField DataField="ORDER_PRODUCT_NAME" HeaderText="ORDER_PRODUCT_NAME" ReadOnly="True" SortExpression="ORDER_PRODUCT_NAME" />
                <asp:BoundField DataField="ORDER_PRODUCT_PRICE" HeaderText="ORDER_PRODUCT_PRICE" ReadOnly="True" SortExpression="ORDER_PRODUCT_PRICE" />
                <asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER_NUMBER" SortExpression="ORDER_NUMBER" />
                <asp:TemplateField HeaderText="Number">
                    <ItemTemplate>
                        <asp:Button ID="ButtonMinus" runat="server" Text="-" CommandArgument='<%# Eval("ORDER_ID") %>' OnClick="Minus_One"/>
                        <asp:Button ID="ButtonAdd" runat="server" Text="+" CommandArgument='<%# Eval("ORDER_ID") %>' OnClick="Add_One"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="img1" ImageUrl='<%#Eval("ORDER_PRODUCT_IMAGE") %>'
                            runat="server" AlternateText="image lost"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" EditText="Edit" CancelText="Wait" UpdateText="Confirm" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" DeleteText="Remove" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Cart" runat="server" ConnectionString="<%$ ConnectionStrings:shoestoreConnectionString %>" SelectCommand="SELECT * FROM [carts]" DeleteCommand="DELETE FROM [carts] WHERE [ORDER_ID] = @ORDER_ID" InsertCommand="INSERT INTO [carts] ([ORDER_USERNAME], [ORDER_PRODUCT_NAME], [ORDER_PRODUCT_PRICE], [ORDER_PRODUCT_IMAGE], [ORDER_NUMBER]) VALUES (@ORDER_USERNAME, @ORDER_PRODUCT_NAME, @ORDER_PRODUCT_PRICE, @ORDER_PRODUCT_IMAGE, @ORDER_NUMBER)" UpdateCommand="UPDATE [carts] SET [ORDER_USERNAME] = @_USERNAME, [ORDER_PRODUCT_NAME] = @ORDER_PRODUCT_NAME, [ORDER_PRODUCT_PRICE] = @ORDER_PRODUCT_PRICE, [ORDER_PRODUCT_IMAGE] = @ORDER_PRODUCT_IMAGE, [ORDER_NUMBER] = @ORDER_NUMBER WHERE [ORDER_ID] = @ORDER_ID" ProviderName="<%$ ConnectionStrings:shoestoreConnectionString.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="ORDER_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ORDER_USERNAME" Type="String" />
                <asp:Parameter Name="ORDER_PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="ORDER_PRODUCT_PRICE" Type="Decimal" />
                <asp:Parameter Name="ORDER_PRODUCT_IMAGE" Type="String" />
                <asp:Parameter Name="ORDER_NUMBER" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ORDER_USERNAME" Type="String" />
                <asp:Parameter Name="ORDER_PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="ORDER_PRODUCT_PRICE" Type="Decimal" />
                <asp:Parameter Name="ORDER_PRODUCT_IMAGE" Type="String" />
                <asp:Parameter Name="ORDER_NUMBER" Type="Int32" />
                <asp:Parameter Name="ORDER_ID" Type="Int32" />
                <asp:SessionParameter DefaultValue="DMT1909203@xmu.edu.my" Name="_USERNAME" SessionField="UserName" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Label ID="Label2" runat="server" Text="Total Price: "></asp:Label>

        <br />

        <asp:Button ID="Button1" runat="server" Text="Pay for all" OnClick="Clear_cart" />

    </div>

</asp:Content>
