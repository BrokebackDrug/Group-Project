<%@ Page Title="" Language="C#" MasterPageFile="~/BackPage.Master" AutoEventWireup="true" CodeBehind="AdminDisplay.aspx.cs" Inherits="Group_Project.AdminDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="429px" Width="863px" DataKeyNames="PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,PRODUCT_PRICE,PRODUCT_STOCK,PRODUCT_TYPE,PRODUCT_IMAGE" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" >
        <AlternatingRowStyle BackColor="White" />
        
        <Columns>
            <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" InsertVisible="False" ReadOnly="True" SortExpression="PRODUCT_ID" />
            <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
            <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="PRODUCT_DESCRIPTION" SortExpression="PRODUCT_DESCRIPTION" />
            <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="PRODUCT_PRICE" SortExpression="PRODUCT_PRICE" />
            <asp:BoundField DataField="PRODUCT_STOCK" HeaderText="PRODUCT_STOCK" SortExpression="PRODUCT_STOCK" />
            <asp:BoundField DataField="PRODUCT_TYPE" HeaderText="PRODUCT_TYPE" SortExpression="PRODUCT_TYPE" />
            <asp:BoundField DataField="PRODUCT_IMAGE" HeaderText="PRODUCT_IMAGE" SortExpression="PRODUCT_IMAGE" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:shoestoreConnectionString3 %>" SelectCommand="SELECT * FROM [product]" DeleteCommand="DELETE FROM [product] WHERE [PRODUCT_ID] = @PRODUCT_ID" InsertCommand="INSERT INTO [product] ([PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (@PRODUCT_NAME, @PRODUCT_DESCRIPTION, @PRODUCT_PRICE, @PRODUCT_STOCK, @PRODUCT_TYPE, @PRODUCT_IMAGE)" UpdateCommand="UPDATE [product] SET [PRODUCT_NAME] = @PRODUCT_NAME, [PRODUCT_DESCRIPTION] = @PRODUCT_DESCRIPTION, [PRODUCT_PRICE] = @PRODUCT_PRICE, [PRODUCT_STOCK] = @PRODUCT_STOCK, [PRODUCT_TYPE] = @PRODUCT_TYPE, [PRODUCT_IMAGE] = @PRODUCT_IMAGE WHERE [PRODUCT_ID] = @PRODUCT_ID">
        <DeleteParameters>
            <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PRODUCT_NAME" Type="String" />
            <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
            <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
            <asp:Parameter Name="PRODUCT_STOCK" Type="Int32" />
            <asp:Parameter Name="PRODUCT_TYPE" Type="String" />
            <asp:Parameter Name="PRODUCT_IMAGE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PRODUCT_NAME" Type="String" />
            <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
            <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
            <asp:Parameter Name="PRODUCT_STOCK" Type="Int32" />
            <asp:Parameter Name="PRODUCT_TYPE" Type="String" />
            <asp:Parameter Name="PRODUCT_IMAGE" Type="String" />
            <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
