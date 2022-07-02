<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Group_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">SIGN IN</asp:HyperLink>  
     
    <asp:Label ID="Label1" runat="server" CssClass="text-center" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="WELCOME BACK!" style="margin-left:38%"></asp:Label>
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Register.aspx">REGISTER</asp:HyperLink>
    <asp:Panel ID="Panel1" runat="server" BackColor="#F7F5F7"  Width="600px" style="margin-left:32%">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Your E-mail: *" Font-Names="Times New Roman"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="550px" Font-Names="Times New Roman"></asp:TextBox><br /><br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Times New Roman" Text="Password:*"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="550px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="SIGN IN" BorderColor="#000000" BackColor="Black" ForeColor="White" OnClick="Button1_Click" />
        <br /><br />
    </asp:Panel>
    <br />
</asp:Content>
