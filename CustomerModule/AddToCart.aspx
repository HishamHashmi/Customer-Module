<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="CustomerModule.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact_area">
            <div class="container">
                <div class="row">
                      <div class="col-md-6">
                        <div class="row contact_form_area" style="padding-top:150px; margin-bottom:20px;">
                            <h3 class="contact_title" style="padding:0px;">Home Delivery</h3>
                             <form action="contact_process.php" method="post" id="contactForm">
                                 <h3 style="text-align:center; padding:0px;">Fill In Your Personal Details</h3>
                                <div class="form-group col-md-12">
                                    <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" placeholder="Name" AutoComplete="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage=" Name is required!" ControlToValidate="TextBoxName" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxContact" runat="server" CssClass="form-control" placeholder="Contact No" AutoComplete="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidaContact" runat="server" ErrorMessage="Contact is required!" ControlToValidate="TextBoxContact" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                  <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxAltContact" runat="server" CssClass="form-control" placeholder="Alternate Contact" AutoComplete="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorrEST" runat="server" ErrorMessage="Alt. Contact is required!" ControlToValidate="TextBoxAltContact" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                 <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxAddress" runat="server" CssClass="form-control" placeholder="Address" AutoComplete="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Address is required!" ControlToValidate="TextBoxAddress" ForeColor="Red"></asp:RequiredFieldValidator>

                                     
                                </div>
                                <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxDetails" runat="server" CssClass="form-control" placeholder="Any Specific Details" TextMode="MultiLine" AutoComplete="Disabled"></asp:TextBox>
                                </div>
                          </div>
                    </div>
                    <div class="col-md-4" style="float:right;">
                           <div class="row contact_form_area" style="padding-top:150px; margin-bottom:20px; border-width:2px; border-color:black;" >
                            <h3 class="contact_title" style="padding:0px; font-size:25px;">Your Cart:</h3>
                               <h5 style="text-align:center; padding:0px; font-size:20px;">Your Billing Details are:</h5>
                               <form action="#" method="post" id="cart" style="border:5px; border-color:black">
                                   <div class="form-group col-md-12">
                                       <asp:Label ID="ItemLbl" runat="server" Style="font-size: 18px;" Text="Item Name: "></asp:Label><span><asp:Label ID="LabelItem" runat="server" Style="font-size: 18px;" Text='<%# Eval("itemName") %>'></asp:Label></span>
                                       <br />
                                       <asp:Label ID="Pricelbl" runat="server" Style="font-size: 18px;" Text="Item Price: "></asp:Label><span><asp:Label ID="LabelPrice" runat="server" Style="font-size: 18px;" Text=' <%# Eval("itemPrice") %> '></asp:Label></span>
                                      <!--  <asp:Label ID="QtLbl" runat="server" Style="font-size: 18px;" Text="Quantity: "></asp:Label><span><asp:Label ID="LabelQty" runat="server" Style="font-size: 18px;" ></asp:Label></span>-->
                                       <br />
                                       <asp:Label ID="TotalPrice" runat="server" Style="font-size: 18px;" Text="Total Price: "></asp:Label><span><asp:Label ID="LabelTPrice" runat="server" Style="font-size: 18px;" Text='<%# Eval("itemPrice") %>'></asp:Label></span>
                                  </div>
                                <div class="form-group col-md-12">
                                     <i><asp:Button ID="CheckOut" runat="server" CssClass="btn-sm btn-danger" Height="50px" ForeColor="White" Text="CheckOut" OnClick="CheckOut_Click" /></i>
                                </div>
                       
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectStuffConnectionString %>" SelectCommand="SELECT * FROM [menuItems] WHERE ([itemID] = @itemID)">
                                         <SelectParameters>
                                             <asp:QueryStringParameter Name="itemID" QueryStringField="itemID" Type="Int32" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                            </form>
                               </div>
                        </div>
                     </form>
               
                    </div>
                </div>
        </section>
               
 
</asp:Content>
