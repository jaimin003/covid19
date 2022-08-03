<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="VBook.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="faq-section bg-faq padding-tb">
			<div class="faq-shape">
				<img src="assets/images/faq/shape/01.png" alt="action-shape">
			</div>
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.1s">
                    <h2 class="text-danger display-2">Book A Vaccine</h2>
                    
                    
                </div>
                <div <%--class="section-wrapper wow fadeInUp" data-wow-delay="0.1s"--%>>
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-sm-8 col-12">
                            <form id="Form1" runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Select Your Identity Proof"></asp:Label><br />
                               <asp:DropDownList ID="ddlidname" runat="server" class="form-control">
                                   <asp:ListItem>AADHAR CARD</asp:ListItem>
                                   <asp:ListItem>PAN CARD</asp:ListItem>
                                   <asp:ListItem>DRIVING LISENCE</asp:ListItem>
                               </asp:DropDownList>       <br />
                                   <asp:TextBox ID="txtano" class="form-control" runat="server" placeholder="Enter Your Identity Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Identity Number" 
                                       ControlToValidate="txtano" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

                                 <asp:Label ID="Label2" runat="server" Text="Select Your Gender"></asp:Label><br />
                                      <asp:RadioButtonList ID="rdgen" runat="server" 
                                CellPadding="10" RepeatDirection="Horizontal" CellSpacing="10" 
                                Height="22px" Width="526px">
                                          <asp:ListItem>Male</asp:ListItem>
                                          <asp:ListItem>Female</asp:ListItem>
                                          <asp:ListItem>Other</asp:ListItem>
                            </asp:RadioButtonList> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Please Select Your Gender*" ControlToValidate="rdgen" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />
<asp:Label ID="Label3" runat="server" Text="Select Your Date For Vaccination"></asp:Label>
<asp:TextBox ID="txtdate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Please Select A date*" ControlToValidate="txtdate" 
                                ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

<asp:Label ID="Label4" runat="server" Text="Select Your Time Slot"></asp:Label><br />
<asp:DropDownList ID="ddlslot" runat="server" class="form-control">
                                   <asp:ListItem>10:00 AM -  11:00 AM</asp:ListItem>
                                   <asp:ListItem>11:00 AM- 12:00 PM</asp:ListItem>
                                   <asp:ListItem>12:00 PM- 1:00 PM</asp:ListItem>
                                   <asp:ListItem>1:00 PM- 4:00 PM</asp:ListItem>
                               </asp:DropDownList>       <br />
                                   <asp:TextBox ID="txtdose" runat="server"></asp:TextBox>
                                   <br /><br />
                                   
                                   <asp:Button ID="btn_submit" runat="server"  class="lab-btn text-white" Text="Request Vaccine" onclick="btn_submit_Click" 
                                       ></asp:Button>
                           </form>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

