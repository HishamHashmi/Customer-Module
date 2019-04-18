<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="restaurantDetails.aspx.cs" Inherits="CustomerModule.restaurantDetails" %>
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
                        <div class="popular_filter" style="padding-bottom: 50px;">
                            <ul>
                                <li class="active"><a href="*">About US</a></li>
                                <li><a href="#book">Book Your Table</a></li>
                                <li><a href="#menu">Our Menu</a></li>
                                <li><a href="#contact">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
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
                                        <h4>Opening Time</h4>
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
                                        <h4>Closing Time</h4>
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
                                    <h4>Address</h4>
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
                                    <h4>Phone</h4>
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
                                    <h4>Email</h4>
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
                            <asp:TextBox ID="TextBox1" runat="server"  Placeholder="Dining Date"></asp:TextBox>
                            <span class="add-on"><i class="icon-th"></i></span>
                        </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBox2" runat="server"  Placeholder="Checkin Time"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBox3" runat="server"  Placeholder="CheckoutTime"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBox4" runat="server" Placeholder="No. of Persons"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:TextBox ID="TextBox5" runat="server"  Placeholder="DiscountID"></asp:TextBox>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-3" style="margin-top:10px;">
                        <a href="#" class="btn btn-default submit_btn">Book Table</a>
                    </div>
                </div>
                </div>
            </div>
        </section>
        <!--================End Booking Table Area =================-->
        <section class="most_popular_item_area menu_list_page">
            <div class="container" id="menu">
                <div class="s_black_title">
                    <h3 >Promotional</h3>
                    <h2>Offers</h2>
                </div>
                <div class="feature_slider">
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-1.jpg" alt="">
                                <div class="icon_hover">
                                    <i class="fa fa-search"></i>
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table.html"><span>Grilled Chicken</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">$32</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-2.jpg" alt="">
                                <div class="icon_hover">
                                    <i class="fa fa-search"></i>
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>Lasagne Pasta</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">$16</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-3.jpg" alt="">
                                <div class="icon_hover">
                                    <i class="fa fa-search"></i>
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>Hamburger</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">$25</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-1.jpg" alt="">
                                <div class="icon_hover">
                                    <i class="fa fa-search"></i>
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>Grilled Chicken.</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">$32</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="s_black_title" style="margin-top:50px;">
                <h3 >Our</h3>
                <h2>Menu</h2>
            </div>
                 <div class="popular_filter" style="margin-top:50px;">
                    <ul>
                        <li class="active" data-filter="*"><a href="">All</a></li>
                        <li data-filter=".break"><a href="">Breakfast</a></li>
                        <li data-filter=".lunch"><a href="">Lunch</a></li>
                        <li data-filter=".dinner"><a href="">Dinner</a></li>
                        <li data-filter=".snacks"><a href="">Snacks</a></li>
                        <li data-filter=".coffee"><a href="">Coffee</a></li>
                    </ul>
                </div>
                <div class="p_recype_item_main">
                    <div class="row p_recype_item_active">
                    <asp:Repeater ID="RepeaterMenu" runat="server">
                    <ItemTemplate>
                   <div class="col-md-6 break snacks">
                            <div class="media" style="width:500px">
                                <div class="media-left">
                                    <img src='<%# Eval("itemImage").ToString().Replace("~","") %>' style="width:100px; height:120px;" />
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3><asp:Label ID="ItemName" runat="server" Text='<%# Eval("itemName") %>'></asp:Label></h3></a>
                                    <h4><asp:Label ID="ItemPrice" runat="server" Text='<%# Eval("itemPrice") %>'></asp:Label></h4>
                                    <p><asp:Label ID="ItemDes" runat="server" Text='<%# Eval("itemDescription") %>'></asp:Label> </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
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
                                                <asp:TextBox ID="TBoxFName" runat="server" class="form-control" Placeholder="First Name"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxLName" runat="server" class="form-control" Placeholder="Last Name"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxEmail" runat="server" class="form-control" Placeholder="Email"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxSub" runat="server" class="form-control" Placeholder="Subject"></asp:TextBox>
                                            </div>
                                             <div class="form-group col-md-12">
                                                <asp:TextBox ID="TBoxMsg" runat="server" class="form-control" Placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-12" style="padding: 20px;">
                                                <asp:Button ID="ButtonSubmit" class="btn btn-default submit_btn" runat="server" Text="Submit" />
                                             </div>
                                        </form>
                                        <div id="success">
                                            <p>Your text message sent successfully!</p>
                                        </div>
                                        <div id="error">
                                            <p>Sorry! Message not sent. Something went wrong!!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [restaurantProfile]"></asp:SqlDataSource>
</asp:Content>

