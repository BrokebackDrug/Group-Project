<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Group_Project.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="layout_padding gallery_section">
        <div class ="container">
            <div class="best_shoes">

            <div class="row">
    		<div class="col-6">
                <div style="height:400px;width:520px;align-content:center;">
                    <asp:Image ID="ProductImage" runat="server" style="margin-left:20px;border:solid grey 1px; height:100%;width:auto;"/>
                </div>

    		</div>
            <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server" Text="Product Name" Font-Bold="True" Font-Size="X-Large" Height="70px" Width="550px" Style="top:0px;"></asp:Label>
               <br />
                <asp:Label ID="Label2" runat="server" Text="Product Description" Height="60px" Width="420px"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Price" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Product Stock" Style="margin-left:200px;" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Size:"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem>37&nbsp;</asp:ListItem>
                    <asp:ListItem>38&nbsp;</asp:ListItem>
                    <asp:ListItem>39&nbsp;</asp:ListItem>
                    <asp:ListItem>40&nbsp;</asp:ListItem>
                    <asp:ListItem>41&nbsp;</asp:ListItem>
                    <asp:ListItem>42&nbsp;</asp:ListItem>
                    <asp:ListItem>43&nbsp;</asp:ListItem>
                    <asp:ListItem>44&nbsp;</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Quantity:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="70px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="Button1_Click" />

            </div>
            </div>
            </div>
    	</div>		     
    </div>


   


</asp:Content>
