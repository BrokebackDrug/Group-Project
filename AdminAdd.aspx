<%@ Page Title="" Language="C#" MasterPageFile="~/BackPage.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="Group_Project.AdminAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server"  BackColor="#FFEAFF"  Width="800px" style="margin-left:32%">
       <center> <h1><b>Add Product</b></h1></center>
        <div style="margin-left:10%">
     <br /><h1 class="auto-style1">Product Name: &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="417px"></asp:TextBox>
                <br />
    </h1>

    <h1>Product Description<br /> &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="77px" TextMode="MultiLine" Width="610px" ></asp:TextBox>


        <br />


    </h1>


    <h1>Product Price:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
            </h1>
    <h1>Product Stock:&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
        <br />
            </h1>
    <h1>Product Type:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="132px">
        <asp:ListItem>Man</asp:ListItem>
        <asp:ListItem>Woman</asp:ListItem>
        </asp:DropDownList>
        <br />
    </h1>
    <h1>Product Image:&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
    </h1>
            
    <center>
    <asp:Button ID="Button1"  runat="server" Text="Submit" OnClick="Button1_Click" BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="97px" Width="199px" />
    </center>
    </div>
    </asp:Panel>
    </div>

</asp:Content>
