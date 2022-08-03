<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="donate_plazma.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="faq-section bg-faq padding-tb">
			<div class="faq-shape">
				<img src="assets/images/faq/shape/01.png" alt="action-shape">
			</div>
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <h2 class="text-danger display-2">Donate Blood Save Life</h2>
                    
                    
                </div>
                <div class="section-wrapper wow fadeInUp" >
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-sm-8 col-12">
                               
                        
                            <form id="Form1" runat="server">          
                                   <%--<asp:TextBox ID="txtano" class="form-control" runat="server" placeholder="Enter Your 12 Digits AAdhar Card Number"></asp:TextBox>--%>
                                   <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Enter Your Name"></asp:TextBox><br />
                                   <asp:TextBox ID="txtmail" class="form-control" runat="server" placeholder="Enter Your Email"></asp:TextBox><br />
                                   <asp:TextBox ID="txtcno"  class="form-control" runat="server" placeholder="Enter Your Phone Number"></asp:TextBox><br />
                                   <asp:TextBox ID="txtbld"  class="form-control" runat="server" placeholder="Enter Your Blood Group"></asp:TextBox><br />
                                    <asp:DropDownList ID="ddlreport" runat="server" class="form-control">
                                        <asp:ListItem>Positive</asp:ListItem>
                                        <asp:ListItem>Negative</asp:ListItem>
                                   </asp:DropDownList><br />
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload>
                                    <asp:Image ID="Image1" runat="server"></asp:Image>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="bt_upload" runat="server" Text="Upload Corona Report" 
                                       class="btn btn-success" onclick="bt_upload_Click" ></asp:Button>
                                  <br />      
                                  <br />                                   
                                   <asp:Button ID="btn_submit" runat="server" class="lab-btn text-white" 
                                       Text="Donate" onclick="btn_submit_Click"></asp:Button>
                                       
                           </form>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>

</asp:Content>

