<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="restaurantDetails.aspx.cs" Inherits="CustomerModule.restaurantDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <header class="main_menu_area">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="home.html"><img src="images/DK.png" style="width:172px;height:52px;" alt=""></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                           <li><a href="#">Login</a></li>
                           <li><a href="#">Sign Up</a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header>
        <!--================End Footer Area =================-->
          <section class="banner_area">
            <div class="container">
                <div class="banner_content">
                    <div class="s_white_title">
                        <h3 style="font-size: 60px;">Restaurant</h3>
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
                            <p>There are many variations of passages of Lorem Ipsum available, but the majori have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a pas of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <div class="col-md-4 col-sm-4">
                            <div class="media">
                                    <div class="media-left">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="media-body">
                                        <h4>Opening Time</h4>
                                        <h5>backpiper.com@gmail.com</h5>
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
                                        <h5>backpiper.com@gmail.com</h5>
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
                                    <h5>Freedom Way, Jersey Ctity, NJ 07305, USA</h5>
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
                                    <h5>+88 01911 854 378</h5>
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
                                    <h5>backpiper.com@gmail.com</h5>
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
                            <input size="16" type="text" placeholder="Name" >
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-append input">
                            <input size="16" type="text" placeholder="Dining Date">
                            <span class="add-on"><i class="icon-th"></i></span>
                        </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <input size="16" type="text" placeholder="Checkin Time">
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <input size="16" type="text" placeholder="Checkout Time">
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <input size="16" type="text" placeholder="No. of Persons">
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <input size="16" type="text" placeholder="Discount ID">
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                    </div>
                    <div class="col-sm-3">
                        <a href="restauantSearch.html" class="btn btn-default submit_btn" style="float:right; margin-top: 10px">Find Restaurant</a>
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
                        <div class="col-md-6 break snacks">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 break coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 lunch snacks">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 lunch dinner">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 break coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-5.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 break coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-6.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 lunch coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-7.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner snacks">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-8.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 lunch coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-7.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner snacks">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-8.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-9.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-10.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-9.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 dinner coffee">
                            <div class="media">
                                <div class="media-left">
                                    <img src="img/recype/recype-10.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3>Vegetable Flavour</h3></a>
                                    <h4>$32</h4>
                                    <p>Lorem ipsum dolor sit amets, consectetur adipiscing </p>
                                    <a class="read_mor_btn" href="#">Add To Cart</a>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                              <input type="text" class="form-control" id="name" name="name" placeholder="First Name*">
                                            </div>
                                            <div class="form-group col-md-12">
                                              <input type="text" class="form-control" id="last" name="last" placeholder="Last Name*">
                                            </div>
                                           
                                            <div class="form-group col-md-12">
                                              <input type="email" class="form-control" id="email" name="email" placeholder="Your Email*">
                                            </div>
                                             <div class="form-group col-md-12">
                                              <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject">
                                            </div>
                                            <div class="form-group col-md-12">
                                              <textarea class="form-control" id="message" name="message" placeholder="Write Message"></textarea>
                                            </div>
                                            <div class="form-group col-md-12" style="padding: 20px;">
                                                <button class="btn btn-default submit_btn" type="submit">Send Message</button>
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
        
</asp:Content>
