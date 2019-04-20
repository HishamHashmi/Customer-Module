<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CustomerModule.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [restaurantProfile]"></asp:SqlDataSource>
     <!--================Slider Area =================-->
        <section class="slider_area">
            <div class=slider_inner>
                <div class="rev_slider fullwidthabanner"  data-version="5.3.0.2" id="home-slider">
                    <ul> 
                        <li data-slotamount="7" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="600" data-rotate="0" data-saveperformance="off">
                            <!-- MAIN IMAGE -->
                            <img src="img/home-slider/slider-1.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="slider_text_box">
                               <div class="tp-caption bg_box" 
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-x="center" 
                                    data-y="['350','350','300','250','0']"
                                    data-fontsize="['55']" 
                                    data-lineheight="['60']" 
                                    data-transform_idle="o:1;"
                                    data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;" 
                                    data-mask_out="x:inherit;y:inherit;" 
                                    data-start="2000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on">
                                </div>
                                <div class="tp-caption first_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['-20']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['42','42','42','42','25']"
                                    data-lineheight="['52','52','52','52','35']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Welcome To 
                                </div>
                                <div class="tp-caption secand_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['45']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['36']"
                                    data-lineheight="['42']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" style="margin-top: 30px;">DastarKhwan
                                </div>
                                <div class="tp-caption third_text" 
                                data-x="center" 
                                data-y="center" 
                                data-voffset="['100']"
                                data-Hoffset="['0']"
                                data-fontsize="['24','24','24','24','16']"
                                data-lineheight="['34','34','34','34','26']"
                                data-width="none"
                                data-height="none"
                                data-transform_idle="o:1;"
                                data-whitespace="nowrap"
                                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                data-start="1200" 
                                data-splitin="none" 
                                data-splitout="none" 
                                data-responsive_offset="on" 
                                data-elementdelay="0.05"  style="margin-top: 30px;">Experience The Great Food
                            </div>
                               <div class="tp-caption btn_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['180']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['16.75']"
                                    data-lineheight="['26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" ><a class="submit_btn_bg" href="#find">Find Restaurant</a>
                                </div>
                            </div>
                        </li>
                        <li data-slotamount="7" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="600" data-rotate="0" data-saveperformance="off">
                            <!-- MAIN IMAGE -->
                            <img src="img/home-slider/slider-2.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="slider_text_box text_box2">
                               <div class="tp-caption bg_box" 
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-x="center" 
                                    data-y="['350','350','300','250']"
                                    data-fontsize="['55']" 
                                    data-lineheight="['60']" 
                                    data-transform_idle="o:1;"
                                    data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;" 
                                    data-mask_out="x:inherit;y:inherit;" 
                                    data-start="2000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on">
                                </div>
                                <div class="tp-caption first_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['-20']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['42','42','42','42','25']"
                                    data-lineheight="['52','52','52','52','35']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Welcome To
                                </div>
                                <div class="tp-caption secand_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['45']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['36']"
                                    data-lineheight="['42']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" style="margin-top: 30px;">DastarKhwan
                                </div>
                                <div class="tp-caption third_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['100']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['24','24','24','24','16']"
                                    data-lineheight="['34','34','34','34','26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05"  style="margin-top: 30px;">Experience The Great Food
                                </div>
                               <div class="tp-caption btn_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['180']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['16.75']"
                                    data-lineheight="['26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" ><a class="submit_btn_bg" href="#find">Find Restaurant</a>
                                </div>
                            </div>
                        </li>
                    </ul> 
                </div><!-- END REVOLUTION SLIDER -->
            </div>
        </section>
        <!--================End Slider Area =================-->
        <!--================Service Area =================-->
            <div class="container" >
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="s_black_title" style="padding:50px 0px;">
                            <h3>About</h3>
                            <h2>Us</h2>
                            <p style="padding:20px 0px;">Are you hungry? Wanna have dinner at your favourite on busy days? Then DastarKhwan is the right place for you! DastarKhwan, offers you a long and detailed <b> list of
                                    restaurants near you</b>. If you are in a mood of Dine-In with your family, reserve your table at your favourite place and Dine-In on your desired time without having to find an empty table 
                                    furthur, if you feel too lazy to drive to your favourite restaurant, you can just order food and get it delivered at your place.</p>
                            <h3 style="padding:20px 0px;">What's new?</h3>
                            <p style="text-align:left">&#10004 Selection of premium restaurants, all kind of Cuisines</p>
                            <p style="text-align:left">&#10004 High quality table booking and food delivery system</p>
                        </div>
                    </div>
                </div>
            </div>
          <!--================End Service Area =================-->
        
        <!--================Booking Table Area =================-->
        <section class="booking_table_area">
            <div class="container" id="find" >
                <div class="s_white_title">
                    <h3>Find</h3>
                    <h2>Restaurant</h2>
                    <p>Look for your favourite dine-in place</p>
                </div>
                <div class="row">
                        <div class="col-sm-4">
                        <div class="input-append input">
                            <asp:TextBox ID="restName" runat="server" Placeholder="Restaurant" ></asp:TextBox>
                            <span class="add-on"><i class="icon-th"></i></span>
                            <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteRestaurant" runat="server" TargetControlID="restName" UseContextKey="true" CompletionInterval="500" MinimumPrefixLength="1" ServiceMethod="restaurantData"></ajaxToolkit:AutoCompleteExtender>
                        </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="input-append input">
                                <asp:ScriptManager ID="ScriptManagerRestaurant" runat="server"></asp:ScriptManager>
                                <asp:TextBox ID="cuisineName" runat="server" Placeholder="Cuisine"></asp:TextBox>
                                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteCuisine" runat="server"  TargetControlID="cuisineName" UseContextKey="true" CompletionInterval="500" MinimumPrefixLength="1" ServiceMethod="cuisineData"></ajaxToolkit:AutoCompleteExtender>
                                <span class="add-on"><i class="icon-th"></i></span>
                             </div>
                    </div>
                    <div class="col-sm-4">
                        <a href="#" onclick="MoveToSearch();"  class="btn btn-default submit_btn">Find Restaurant</a>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Booking Table Area =================-->

     <!--================Our feature Area =================-->
        <section class="our_feature_area">
            <div class="container">
                <div class="s_black_title">
                    <h3>Order Your</h3>
                    <h2>Favourite Food</h2>
                </div>
                <div class="feature_slider">
                        <asp:Repeater ID="RepeaterHomeSlider" runat="server">
                        <ItemTemplate>
                        <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                               <img src='<%# Eval("itemImage").ToString().Replace("~","") %>' style="width:350px; height:300px;" />
                                <div class="icon_hover">
                                    <i class="fa fa-search"></i>
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="#"><span><asp:Label ID="LabelName" runat="server" Text='<%# Eval("itemName") %>'></asp:Label></span></a></div>
                            </div>
                        </div>
                        </div>
                        </ItemTemplate>
                        </asp:Repeater>
                    </div>
                 </div>
             </section>
        <!--================End Our feature Area =================-->
    <script type="text/javascript">

        function MoveToSearch() {
            var rName = document.getElementById('<%= restName.ClientID%>').value;

            var cName = document.getElementById('<%= cuisineName.ClientID%>').value;
            console.log("cname: " + cName + " rname: " + rName);
            var mLocation;
            if (cName && !rName) {
                mLocation = "restaurantSearch.aspx?cName=" + cName;
            } else if (rName && !cName) {
                mLocation = "restaurantSearch.aspx?rName=" + rName;
            } else if (rName && cName) {
                 mLocation = "restaurantSearch.aspx?rName=" + rName + "&cName=" + cName;
            }     
           location.href = mLocation;
            
        }

    </script>
</asp:Content>
