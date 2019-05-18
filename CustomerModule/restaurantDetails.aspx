﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="restaurantDetails.aspx.cs" Inherits="CustomerModule.restaurantDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <section class="banner_area">
            <div class="container">
                <div class="banner_content">
                    <div class="s_white_title">
                        <h3 style="font-size: 60px;"><asp:Label ID="restName" runat="server" Text='<%# Eval("restaurantName") %>' class="s_white_title"></asp:Label></h3>
                    </div>
                </div>
            </div>
        </section>
      <!--================Booking Table Area =================-->
        <section class="most_popular_item_area menu_list_page">
                <div class="container">
                   <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="s_black_title">
                                <h3>About</h3>
                                <h2>Us</h2>
                            </div>
                        </div>
                </div>
            </div>
        </section>
        <section class="contact_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="contact_details">
                            <p style="text-align: center; font-size:18px;"><asp:Label ID="LabelBio" runat="server" Text='<%# Eval("restaurantDescription") %>' CssClass="contact_details"></asp:Label></p>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                    <div class="media-left">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="media-body">
                                        <h5 style="font-family: Open Sans, sans-serif; font-size:14px; font-weight:900;">Opening Time</h5>
                                        <h5><asp:Label ID="openTime" runat="server" Text='<%# Eval("restaurantOpeningTime") %>'></asp:Label></h5>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                    <div class="media-left">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="media-body">
                                        <h5 style="font-family: Open Sans, sans-serif; font-size:14px; font-weight:900;">Closing Time</h5>
                                        <h5><asp:Label ID="closeTime" runat="server" Text='<%# Eval("restaurantClosingTime") %>'></asp:Label></h5>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="media-body">
                                    <h5 style="font-family: Open Sans, sans-serif; font-size:14px; font-weight:900;">Address</h5>
                                    <h5><asp:Label ID="address" runat="server" Text='<%# Eval("restaurantAddress") %>'></asp:Label></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="media-body">
                                    <h5 style="font-family: Open Sans, sans-serif; font-size:14px; font-weight:900;">Phone</h5>
                                    <h5><asp:Label ID="contactNo" runat="server" Text='<%# Eval("restaurantContactNo") %>'></asp:Label></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-envelope-o"></i>
                                </div>
                                <div class="media-body">
                                    <h5 style="font-family: Open Sans, sans-serif; font-size:14px; font-weight:900;">Email</h5>
                                    <h5><asp:Label ID="restEmail" runat="server" Text='<%# Eval("restaurantEmail") %>'></asp:Label></h5>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            <section class="booking_table_area1">
            <div class="container" id="book">
                <div class="s_white_title" >
                    <h3 >Book Your</h3>
                    <h2>Table</h2>
                    <p>Reserve your table at your desired date and time</p>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                    <div class="col-sm-4">
                        <div class="input-append input">
                            <asp:TextBox ID="TextBoxName" runat="server" Placeholder="Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-append input">
                            <asp:TextBox ID="TextBoxDate" runat="server"  Placeholder="Dining Date" AutoComplete="Disabled"></asp:TextBox>
                            <span class="add-on"><i class="icon-th"></i></span>
                        </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append  date form_time">
                                <asp:TextBox ID="TextBoxCIN" runat="server"  Placeholder="Checkin Time" AutoComplete="Disabled"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append date form_time">
                                <asp:TextBox ID="TextBoxCOUT" runat="server"  Placeholder="CheckoutTime" AutoComplete="Disabled"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBoxPersons" runat="server" Placeholder="No. of Persons" AutoComplete="Disabled"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBoxD" runat="server"  Placeholder="DiscountID" AutoComplete="Disabled"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-3" style="margin-top:10px;">
                       <asp:Button ID="Button1"  CssClass="btn btn-danger submit_btn" runat="server" Text="Book MY Table" OnClick="Button1_Click" OnClientClick="Alert()" />
                    </div>
                        <script type="text/javascript">
                            alert("You table has been reserved");
                        </script>
                 </div>
                </div>
            </div>
        </section>
        <!--================End Booking Table Area =================-->
    <section class="most_popular_item_area menu_list_page">
        <!--<div class="container" id="menu">
            <div class="s_black_title">
                <h3>Promotional</h3>
                <h2>Offers</h2>
            </div>
            <div class="feature_slider">
                <asp:Repeater ID="RepeaterDeal" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src='<%# Eval("dealImage").ToString().Replace("~","") %>' style="width: 350px; height: 300px;" />
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>
                                        <asp:Label ID="LabelName" runat="server" Text='<%# Eval("dealName") %>'></asp:Label></span></a></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        -->
            <div class="s_black_title" style="margin-top: 50px;">
                <h3>Our</h3>
                <h2>Menu</h2>
            </div>
        <div class="p_recype_item_main" style="margin-top50px;">
            <div class="row p_recype_item_active">
                <asp:Repeater ID="RepeaterMenu" runat="server">
                    <ItemTemplate>
                        <div class="col lg-6 col-md-6 break snacks">
                            <div class="media" style="width: 500px">
                                <div class="media-left">
                                    <img src='<%# Eval("itemImage").ToString().Replace("~","") %>' style="width: 100px; height: 120px;" />
                                </div>
                                <div class="media-body">
                                    <a href="#">
                                        <h3>
                                            <asp:Label ID="ItemName" runat="server" Text='<%# Eval("itemName") %>'></asp:Label></h3>
                                    </a>
                                    <h5 style="font-family: Open Sans, sans-serif; font-size: 14px; font-weight: 900; float: right; padding: 10px">
                                        <asp:Label ID="ItemPrice" runat="server" Text='<%#"Rs." + Eval("itemPrice") %>'></asp:Label></h5>
                                    <p>
                                        <asp:Label ID="ItemDes" runat="server" Text='<%# Eval("itemDescription") %>'></asp:Label>
                                    </p>
                                    <a class="read_mor_btn" href='<%# "AddToCart.aspx?ID=" + Eval("itemID") %>'>Add To Cart</a>
                                    <i style="float: right;">
                                        <label>Quantity: &nbsp;</label><input type="number" name="serialNumber"  style="width:50px;"/></i>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
        <!--================End Our feature Area =================-->
            <section class="banner_area" style="background-image: url(img/banner/Food-banner-2.jpg)">
                <div class="container" id="contact">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="s_white_title" style="margin-top:50px;">
                                    <h3>Restaurant</h3>
                                    <h2>Feedback</h2>
                                 </div>
                            </div>
                        </div>
                </div>
                <div class="container">
                    <div class="row">
                            <div class="col-lg-6 col-md-6 col sm-6">
                                    <div class="row contact_form_area">
                                        <form action="contact_process.php" method="post" id="contactForm">
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxFName" runat="server" class="form-control" Placeholder="First Name" AutoComplete="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxLName" runat="server" class="form-control" Placeholder="Last Name" AutoComplete="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxEmail" runat="server" class="form-control" Placeholder="Email" AutoComplete="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxSub" runat="server" class="form-control" Placeholder="Subject" AutoComplete="Disabled"></asp:TextBox>
                                            </div>
                                             <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxMsg" runat="server" class="form-control" Placeholder="Message" TextMode="MultiLine" AutoComplete="Disabled"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12" style="padding: 20px;">
                                                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="btn btn-danger submit_btn" ForeColor="White" OnClick="ButtonSubmit_Click" />
                                             </div>
                                        </form>
                                        <!--<div id="success">
                                            <p>Your text message sent successfully!</p>
                                        </div>
                                        <div id="error">
                                            <p>Sorry! Message not sent. Something went wrong!!</p>
                                            
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [restaurantProfile]"></asp:SqlDataSource>
</asp:Content>

