<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Man.aspx.cs" Inherits="Group_Project.Man" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- New Arrivals section start -->
  <div class="collection_text">Shoes For Men</div>
     
    <div class="layout_padding gallery_section">
    	<div class="container">
    		<div class="row">
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Best Shoes </p>
    					<div class="shoes_icon"><img src="images/shoes-img4.png"></div>
    					<div class="star_text">    						
    						<asp:Label ID="Label1" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button1" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button1_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>                      
    					</div>
    				</div>
    			</div>
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Best Shoes </p>
    					<div class="shoes_icon"><img src="images/shoes-img5.png"></div>
    					<div class="star_text">    						
    						<asp:Label ID="Label2" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button2" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button2_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>                      
    					</div>
    					</div>
    			</div>
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Best Shoes </p>
    					<div class="shoes_icon"><img src="images/shoes-img5.png"></div>
    					<div class="star_text">
    						<asp:Label ID="Label3" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button3" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button3_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Sports Shoes</p>
    					<div class="shoes_icon"><img src="images/shoes-img7.png"></div>
    					<div class="star_text">
    						<asp:Label ID="Label4" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button4" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button4_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Sports Shoes</p>
    					<div class="shoes_icon"><img src="images/shoes-img8.png"></div>
    					<div class="star_text">
                            <asp:Label ID="Label5" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button5" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button5_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>    					</div>
    				</div>
    			</div>
    			<div class="col-sm-4">
    				<div class="best_shoes">
    					<p class="best_text">Sports Shoes</p>
    					<div class="shoes_icon"><img src="images/shoes-img9.png"></div>
    					<div class="star_text">
    						<asp:Label ID="Label6" runat="server" Text="Label" CssClass="shoes_price" Width="120px">$ <span style="color: #ff4e5b;">400</span></asp:Label> 
                            <asp:Button ID="Button6" runat="server" Text="View" CssClass="buy_now_bt" OnClick="Button6_Click" Height="40px" Width="60px" style="margin-left:60px;margin-top:5px;"></asp:Button>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>

        
   	<!-- New Arrivals section end -->
</asp:Content>
