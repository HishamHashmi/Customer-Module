<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="restaurantSearch.aspx.cs" Inherits="CustomerModule.restaurantSearch" %>
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
        <section class="most_popular_item_area menu_list_page">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="s_black_title">
                                    <h3>Restaurants</h3>
                                    <h2>For you</h2>
                                 </div>
                            </div>
                        </div>
                    </div>
            <div class="container">
                <div class="row">
                <div class="popular_filter" style="margin-top:30px;">
                    <ul>
                        <li class="active" data-filter="*"><a href="">All</a></li>
                        <li data-filter=".break"><a href="">Location</a></li>
                        <li data-filter=".lunch"><a href="">Cuisine</a></li>
                      </ul>
                </div>
                <div class="p_recype_item_main">
                    <div class="row p_recype_item_active">
                        <div class="col-md-4 col-sm-6 break snacks">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-1.jpg" alt="">
                                    <div class="icon_hover">
                                        <a href="restaurantDetails.html"><i class="fa fa-search"></i></a>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Lasagne Pasta</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$16</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 break coffee">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-2.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Barbecue Chicken</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$25</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 lunch snacks">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-3.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Hamburger</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$50</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 lunch dinner">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-4.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Meal</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$65</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 break snacks">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-5.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Soup Recipes</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$36</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 break coffee">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-6.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Sea Food</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$75</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 lunch snacks">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-7.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Green Tea</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$15</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 lunch dinner">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-8.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Breakfast Rool</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$17</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 lunch dinner">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <img src="img/menu-grid/Menu_Grid-9.jpg" alt="">
                                    <div class="icon_hover">
                                        <i class="fa fa-search"></i>
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                </div>
                                <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>Hamburger</span></a></div>
                                    <div class="restaurant_feature_dots"></div>
                                    <div class="feature_right">$25</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
        <!--================End Recent Blog Area =================-->
</asp:Content>
