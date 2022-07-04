<%@ Page Title="" Language="C#" MasterPageFile="~/BackPage.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="Group_Project.AdminAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    admin add product page
    <h1>Product Name: 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </h1>

    <h1>Product Description    
        <asp:TextBox ID="TextBox2" runat="server" Height="31px" ></asp:TextBox>


    </h1>


    <h1>Product Price:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></h1>
    <h1>Product Stock:<asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox></h1>
    <h1>Product Type:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>Man</asp:ListItem>
        <asp:ListItem>Woman</asp:ListItem>
        </asp:DropDownList>
    </h1>
    <h1>Product Image:<asp:FileUpload ID="FileUpload1" runat="server" />
    </h1>
    
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />



</asp:Content>
