<%@ Page Title="" Language="C#" MasterPageFile="~/FrontPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Group_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center><h1>This is the home page of the website.</h1></center>
                <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="container">
                    <div class="row">
					
					<div class="col-sm-5">
						<div class="banner_taital">
							<h1 class="banner_text">New Running Shoes </h1>
							<h1 class="mens_text"><strong>Men's Like Plex</strong></h1>
							<p class="lorem_text">Our shop provide shoes for men and women.</p>
							<button class="buy_bt"><a href="man.aspx">Man</a></button>
							<button class="more_bt"><a href="woman.aspx">Woman</a> </button>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="shoes_img"><img src="images/running-shoes.png"></div>
					</div>
				</div>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- new collection section start -->
    <div class="layout_padding collection_section">
    	<div class="container">
    	    <h1 class="new_text"><strong>New  Collection</strong></h1>
    	    <p class="consectetur_text">You can go to men and women page to see more products.</p>
    	    <div class="collection_section_2">
    	    	<div class="row">
    	    		<div class="col-md-6">
    	    			<div class="about-img">
    	    				<button class="new_bt">New</button>
    	    				<div class="shoes-img"><img src="images/women-01.jpg"></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text">$<strong style="color: #f12a47;">90</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    		</div>
    	    		<div class="col-md-6">
    	    			<div class="about-img2">
    	    				<div class="shoes-img2"><img src="images/men-01.jpg"></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text">$<strong style="color: #f12a47;">90</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    		</div>
    	    	</div>
    	    </div>
    	</div>
    </div>


	<!-- new collection section end -->

</asp:Content>