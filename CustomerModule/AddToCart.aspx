<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="CustomerModule.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact_area">
            <div class="container">
                <div class="row">
                      <div class="col-md-5">
                        <div class="row contact_form_area" style="padding-top:150px; margin-bottom:20px;">
                            <h3 class="contact_title" style="padding:0px;">Home Delivery</h3>
                             <form action="contact_process.php" method="post" id="contactForm">
                                 <h3 style="text-align:center; padding:0px;">Fill In Your Personal Details</h3>
                                <div class="form-group col-md-12">
                                    <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" placeholder="Name"  AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage=" Name is required!" ControlToValidate="TextBoxName" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxContact" runat="server" CssClass="form-control" placeholder="Contact No"  AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidaContact" runat="server" ErrorMessage="Contact is required!" ControlToValidate="TextBoxContact" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                  <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxAltContact" runat="server" CssClass="form-control" placeholder="Alternate Contact"  AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorrEST" runat="server" ErrorMessage="Alt. Contact is required!" ControlToValidate="TextBoxAltContact" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                 <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxAddress" runat="server" CssClass="form-control" placeholder="Address"  AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Address is required!" ControlToValidate="TextBoxAddress" ForeColor="Red"></asp:RequiredFieldValidator>

                                     
                                </div>
                                <div class="form-group col-md-12">
                                   <asp:TextBox ID="TextBoxDetails" runat="server" CssClass="form-control" placeholder="Any Specific Details" TextMode="MultiLine"  AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                          </div>
                    </div>
                    <div class="col-md-6" style="float:right;">
                           <div class="row contact_form_area" style="padding-top:150px; margin-bottom:20px; border-width:2px; border-color:black;" >
                            <h3 class="contact_title" style="padding:0px; font-size:25px;">Your Cart:</h3>
                               <h5 style="text-align:center; padding:0px; font-size:20px;">Your Billing Details are:</h5>
                               <form action="#" method="post" id="cart" style="border:5px; border-color:black">
                                   <div class="form-group col-md-12">
                                        <asp:Repeater ID="rptCart" runat="server">
                                               <HeaderTemplate>
                                                    <table class="table table-borderless table-striped table-earning">
                                                        <tr style="background-color:black; color:white;width:100px; font-size:13px;">
                                                        <th class="text-center">Item Name.</th>
                                                        <th class="text-center">Item Price</th>
                                                        <th class="text-center">Item Quantity</th>
                                                    </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="itemName" runat="server" Text='<%# Eval("itemName") %>'/></td>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="itemPrice" runat="server" Text='<%# Eval("itemPrice") %>'/></td>
                                                         <td class="text-center" style="width:100px; font-size:13px;"><asp:TextBox ID="itemQuantity" TextMode="Number" min="1" runat="server" style="width:80px;"></asp:TextBox></td>
                                                   </tr>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </table>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <div>
                                                <asp:Button ID="CheckOut" runat="server" CssClass="btn-sm btn-danger" Height="50px" ForeColor="White" Text="CheckOut" OnClick="CheckOut_Click" />
                                                <asp:Button ID="Return" runat="server" CssClass="btn-sm btn-primary" Height="50px" ForeColor="White" Text="Return" OnClick="ReturnButton_Click" />
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
                     </form>
               
                    </div>
                </div>
        </section>
</asp:Content>
