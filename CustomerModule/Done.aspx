<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Done.aspx.cs" Inherits="CustomerModule.Done" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="contact_area">
            <div class="container">
                <div class="row">
                      <div class="col-md-12">
                        <div class="row contact_form_area" style="padding-top:150px;">
                            <h3 class="contact_title" style="padding:0px;">Your Order Has Been Placed</h3>;
                            <div class="row contact_form_area" style=" margin-bottom:20px;" >
                            <h3 class="contact_title" style="padding:0px; font-size:25px;">Your ORDER ID is:&nbsp<span><asp:Label ID="LabelID" runat="server" style="font-size:22px;" Text='<%# Eval("orderID") %>'></asp:Label></span> </h3>
                               <h5 style="text-align:center; padding:0px; font-size:20px;">Your Details are:</h5>
                               <form action="#" method="post" id="cart" style="border:5px; border-color:black">
                                <div class="col-md-6 col-lg-6">
                                 <div class="form-group col-md-12" style="text-align:left; margin-left:400px;">
                                    <label style="font-size:18px;">Customer Name:&nbsp &nbsp</label><span><asp:Label ID="Labelcustomer" runat="server" style="font-size:18px;" Text='<%# Eval("customerName") %>' ></asp:Label></span>
                                    <br />
                                    <label style="font-size:18px;" >Customer Contact:&nbsp &nbsp</label><span><asp:Label ID="Labelcontact" runat="server" style="font-size:18px;" Text=' <%# Eval("customerContact") %> '></asp:Label></span>
                                    <br />
                                    <label style="font-size:18px;">Customer Address:&nbsp &nbsp</label><span><asp:Label ID="Labeladdress" runat="server" style="font-size:18px;" Text= '<%# Eval("customerAddress") %>'></asp:Label></span>
                                    <br />
                              
                                </div>
                               </div>
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [menuItems] WHERE ([itemID] = @itemID)">
                                         <SelectParameters>
                                             <asp:QueryStringParameter Name="itemID" QueryStringField="itemID" Type="Int32" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                            </form>
                               </div>
                        </div>
                      </div>
                </div>
            </div>
     </section>
</asp:Content>
