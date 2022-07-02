<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Group_Project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">SIGN IN</asp:HyperLink>  
     
    <asp:Label ID="Label1" runat="server" CssClass="text-center" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="NEW ACCOUNT" style="margin-left:38%"></asp:Label>
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Register.aspx">REGISTER</asp:HyperLink>
    <asp:Panel ID="Panel1" runat="server" BackColor="#F7F5F7"  Width="600px" style="margin-left:30%" EnableTheming="True" Wrap="False">
        <br />
         &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Names="Times New Roman" Text="First Name: *"></asp:Label>
         &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Width="184px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Times New Roman" Text="Last Name: *"></asp:Label>
        &nbsp;<asp:Label ID="Label8" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Width="184px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
         &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="270px"></asp:TextBox>
        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Your E-mail: *" Font-Names="Times New Roman"></asp:Label>
        &nbsp;<asp:Label ID="Label9" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Width="184px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="550px" Font-Names="Times New Roman"></asp:TextBox><br /><br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Names="Times New Roman" Text="Password: *"></asp:Label>
         &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Width="183px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Names="Times New Roman" Text="Password repeat: *"></asp:Label>
        &nbsp;<asp:Label ID="Label11" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Width="156px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="CREATE ACCOUNT" BorderColor="#000000" BackColor="Black" ForeColor="White" OnClick="Button1_Click" />
        <br /><br />
    </asp:Panel>
    <br />
</asp:Content>
