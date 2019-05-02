<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="SearchByItem.aspx.cs" Inherits="CustomerModule.SearchByItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <section class="banner_area">
            <div class="container">
                <div class="banner_content">
                    <div class="s_white_title">
                        <h3 style="font-size: 60px;">Restaurant Search</h3>
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
                    <div class= "col-lg-12 col-md-12 col-sm-12">
                <div class="p_recype_item_main">
                    <div class="row p_recype_item_active">
                        <asp:Repeater ID="RepeaterImages" runat="server">
                        <ItemTemplate>
                        <div class="col-md-4 col-sm-4 break snacks">
                            <div class="feature_item">
                                <div class="feature_item_inner">
                                    <asp:Image ID="ImageRestaurant" ImageUrl='<%# Eval("restaurantDP") %>' runat="server" style="width:350px; height:250px;" />
                                    <div class="icon_hover">
                                        <a href='<%# "restaurantDetails.aspx?ID="+Eval("restaurantID") %>'><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                                 <div class="title_text">
                                    <div class="feature_left"><a href="#"><span>
                                    <asp:Label ID="LabelName" runat="server" Text='<%#Eval("restaurantName") %>'></asp:Label></span></a></div>
                                </div>
                             </div>
                          </div>
                          </ItemTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [restaurantProfile]"></asp:SqlDataSource>
            </div>
            </div>
        </section>
</asp:Content>
