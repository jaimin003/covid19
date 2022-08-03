<%@ Page Title="" Language="C#" MasterPageFile="~/UserDoc/MasterPage.master" AutoEventWireup="true" CodeFile="Display_doc.aspx.cs" Inherits="UserDoc_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       
        <form id="form1" runat="server">



        
       
        <!-- Start Hero -->
        <section class="bg-half-170 d-table w-100" style="background: url('images/bg/department.jpg') center center;">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row mt-5 justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="sub-title mb-4 text-white">Our Doctors</h3>
                            <p class="para-desc mx-auto text-white-50">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        
                            <nav aria-label="breadcrumb" class="d-inline-block mt-3">
                                <ul class="breadcrumb bg-light rounded mb-0 py-1">
                                    <li class="breadcrumb-item"><a href="index.html">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Our Doctors</li>
                                </ul>
                            </nav>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <div class="position-relative">
            <div class="shape overflow-hidden text-white">
                <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
                </svg>
            </div>
        </div>
        <!-- End Hero -->

        <!-- Start -->
        <section class="section">
            <div class="container">
                <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                                  <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                        <div class="card features feature-primary border-0">
                            <div class="icon text-center rounded-md">
                                <img src="../DocImg/<%#Eval("img") %>"  height="150" width="250"/>
                            </div>
                            <div class="card-body p-0 mt-3">
                                <a href="#" class="title text-dark h5"><%#Eval("name") %></a>
                                <p class="text-muted mt-3"><%#Eval("hospital") %></p>
                                
                            </div>
                        </div>
                    </div><!--end col-->
                </ItemTemplate>
                </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Doctor_mstr]"></asp:SqlDataSource>
          

                   

                 

                                 </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        
        <!-- Back to top -->
        <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-pills btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>
        <!-- Back to top -->
        
    
        </form>
        
</asp:Content>

