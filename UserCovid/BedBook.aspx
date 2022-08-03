<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="BedBook.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="faq-section bg-faq padding-tb">
			<div class="faq-shape">
				<img src="assets/images/faq/shape/01.png" alt="action-shape">
			</div>
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.1s">
                    <h2 class="text-danger display-2">REQUEST FOR BED</h2>
                    
                    
                </div>
                <div <%--class="section-wrapper wow fadeInUp" data-wow-delay="0.4s"--%>>
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-sm-8 col-12">
                               
                            <form id="Form1" runat="server"> 
                                   
                                 <asp:TextBox ID="txtadd" class="form-control" runat="server" placeholder="Enter Your Address"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Address" 
                                       ControlToValidate="txtadd" ForeColor="Red"></asp:RequiredFieldValidator>                                       
                                   <asp:TextBox ID="txtano" class="form-control" runat="server" placeholder="Enter Your 12 Digits AAdhar Card Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter AAdhar Card Number" 
                                       ControlToValidate="txtano" ForeColor="Red"></asp:RequiredFieldValidator>
                                  <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload>

                                    <asp:Image ID="Image1" runat="server"></asp:Image>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="bt_upload" runat="server" Text="Upload" 
                                       class="btn btn-success" onclick="bt_upload_Click"></asp:Button>
  <asp:RadioButtonList ID="rdbgender" runat="server" Height="126px" RepeatDirection="Horizontal" 
                                     Width="400px">
      <asp:ListItem>MALE</asp:ListItem>
      <asp:ListItem>FEMALE</asp:ListItem>
      <asp:ListItem>OTHER</asp:ListItem>
      
                                 </asp:RadioButtonList>    
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ErrorMessage="Please Select Your Gender*" ControlToValidate="rdbgender" 
                                     ForeColor="Red"></asp:RequiredFieldValidator>                          
                                       <br />
                                       <asp:Label ID="Label2" runat="server" Text="Label">Need Ambulance</asp:Label>
                                          <asp:DropDownList ID="ddlareq" runat="server"  class="form-control" >
                                              <asp:ListItem>YES</asp:ListItem>
                                              <asp:ListItem>NO</asp:ListItem>        
                                        </asp:DropDownList>
                                   <br />
                                   
                                   <asp:Button ID="btn_submit" runat="server" class="lab-btn text-white" 
                                       Text="Request For Bed" onclick="btn_submit_Click"></asp:Button>
                           </form>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

