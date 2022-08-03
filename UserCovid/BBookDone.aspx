<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="BBookDone.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="faq-section bg-faq padding-tb">
			<div class="faq-shape">
				<img src="assets/images/faq/shape/01.png" alt="action-shape">
			</div>
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <form id="Form1" runat="server">
    <asp:Button ID="btn_bbill" runat="server" Text="View Bill" class="lab-btn text-white" 
                        onclick="btn_bbill_Click"/> <br /><br /> <br /><br />      
</form>
                    <h2 class="text-danger display-2">YOUR BED BOOKED</h2>
                    <h3 class="text-danger display-2">STAY HOME STAY SAFE</h3>
                    <h4 class="text-danger display-2">PLEASE WEAR MASK</h4>                                        
                </div>
                </div>
                </section>
</asp:Content>

