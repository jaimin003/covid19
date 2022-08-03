<%@ Page Title="" Language="C#" MasterPageFile="~/UserDoc/MasterPage.master" AutoEventWireup="true" CodeFile="Uhome.aspx.cs" Inherits="UserDoc_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



        <form id="form1" runat="server">



        <!-- Start Hero -->
        <section class="bg-half-260 d-table w-100" style="background: url('images/bg/01.jpg') center;">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row mt-5 mt-lg-0">
                    <div class="col-12">
                        <div class="heading-title">
                            <img src="images/logo-icon.png" class="avatar avatar-md-sm" alt="">
                            <h4 class="display-4 fw-bold text-white mt-3 mb-4">Meet The <br> Best Doctor</h4>
                            <p class="para-desc text-white-50 mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                            
                            <div class="mt-4 pt-2">
                                <a href="Appointment.aspx" class="btn btn-primary">Make Appointment</a>
                               
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End Hero -->

       <!-- Start -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="features-absolute bg-white shadow rounded overflow-hidden card-group">
                            <div class="card border-0 bg-light p-4">
                                <i class="ri-heart-pulse-fill text-primary h2 mb-0"></i>
                                <h5 class="mt-1">Covid Cases</h5>
                                <p class="text-muted mt-2">Due To Increase in Cases Of corona We have to stay safe stay home </p>
                                <a href="../UserCovid/Uhome.aspx" class="text-primary">Read More <i class="ri-arrow-right-line align-middle"></i></a>
                            </div>
                            
                            <div class="card border-0 p-4">
                                <i class="ri-dossier-fill text-primary h2 mb-0"></i>
                                <h5 class="mt-1">Doctors</h5>
                                <p class="text-muted mt-2">We have a team of professional Docotrs that will treat You</p>
                                <a href="Display_doc.aspx" class="text-primary">Read More <i class="ri-arrow-right-line align-middle"></i></a>
                            </div>

                            <div class="card border-0 bg-light p-4">
                                <i class="ri-time-fill text-primary h2 mb-0"></i>
                                <h5 class="mt-1">Opening Hours</h5>
                                <ul class="list-unstyled mt-2">
                                    <li class="d-flex justify-content-between">
                                        <p class="text-muted mb-0">Monday - Friday</p>
                                        <p class="text-primary mb-0">8.00 - 20.00</p>
                                    </li>
                                    <li class="d-flex justify-content-between">
                                        <p class="text-muted mb-0">Saturday</p>
                                        <p class="text-primary mb-0">8.00 - 18.00</p>
                                    </li>
                                    <li class="d-flex justify-content-between">
                                        <p class="text-muted mb-0">Sunday</p>
                                        <p class="text-primary mb-0">8.00 - 14.00</p>
                                    </li>
                                </ul>
                               
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

         <%--   <div class="container mt-100 mt-60">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="position-relative">
                            <img src="images/about/about-2.png" class="img-fluid" alt="">
                            <div class="play-icon">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#watchvideomodal" class="play-btn video-play-icon">
                                    <i class="mdi mdi-play text-primary rounded-circle bg-white shadow"></i>
                                </a>
                            </div>
                        </div>
                    </div><!--end col-->

            <%--        <div class="col-lg-7 col-md-6 mt-4 mt-lg-0 pt- pt-lg-0">
                        <div class="ms-lg-4">
                            <div class="section-title">
                                <h4 class="title mb-4">About Our Treatments</h4>
                                <p class="text-muted para-desc">Great doctor if you need your family member to get effective immediate assistance, examination, emergency treatment or a simple consultation. Thank you.</p>
                                <p class="text-muted para-desc mb-0">The most well-known dummy text is the 'Lorem Ipsum', which is said to have originated in the 16th century. Lorem Ipsum is composed in a pseudo-Latin language which more or less corresponds to 'proper' Latin. It contains a series of real Latin words.</p>
                            </div>

                            <div class="mt-4">
                                <a href="aboutus.html" class="btn btn-primary">Read More <i class="ri-arrow-right-line align-middle"></i></a>
                            </div>
                        </div>
                    </div><!--end col-->--%>
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-100 mt-60">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title mb-4 pb-2 text-center">
                            <span class="badge badge-pill badge-soft-primary mb-3">Departments</span>
                            <h4 class="title mb-4">Our Medical Services</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                <br /><br />
                <div class="row">
                 <asp:Repeater  runat="server" DataSourceID="SqlDataSource2" >
                <ItemTemplate>
                    <div class="col-xl-3 col-md-4 col-12 mt-5">
                        <div class="card features feature-primary border-0">
                            <div class="icon text-center rounded-md">
                                <img src="../lab_service_img/<%#Eval("img") %>" />
                            </div><br /><br /><br /><br /><br />                            <div class="card-body p-0 mt-3">
                                <a href="Display_services.aspx" class="title text-dark h5"><%#Eval("servicename") %></a>
                                <p class="text-muted mt-3"><%#Eval("description") %></p>
                                <a href="Display_services.aspx" class="link">Read More <i class="ri-arrow-right-line align-middle"></i></a>
                            </div>
                        </div>
                    </div><!--end col-->
 </ItemTemplate>
                </asp:Repeater>
                    
                  
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Service_mstr]"></asp:SqlDataSource>
                    
                  
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

       <%-- <!-- Start -->
        <section class="section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <span class="badge badge-pill badge-soft-primary mb-3">Availability</span>
                            <h4 class="title mb-4">Doctors Time Table</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 mt-4 pt-2">
                        <div class="table-responsive shadow rounded">
                            <table class="table table-center table-bordered bg-white mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-center py-4" style="min-width: 120px;">Time Table</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Monday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Tuesday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Wednesday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Thursday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Friday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Saturday</th>
                                        <th class="text-center py-4" style="min-width: 200px;">Sunday</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Start -->
                                    <tr>
                                        <th class="text-center py-5">09:00AM</th>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/01.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Calvin Carlo</h6>
                                                    <small class="text-muted">Eye Care</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00AM - 10:00AM</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/03.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Alia Reddy</h6>
                                                    <small class="text-muted">Psychotherapy</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00AM - 01:00PM</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <th class="text-center py-5">11:00AM</th>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Cristino Murphy</h6>
                                                    <small class="text-muted">Gynecology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">11:00AM - 04:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/05.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Jennifer Ballance</h6>
                                                    <small class="text-muted">Cardiology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">11:00AM - 12:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/04.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Toni Kovar</h6>
                                                    <small class="text-muted">Orthopedic</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00AM - 10:00AM</small>
                                        </td>
                                        <td></td>
                                    </tr>
                                    
                                    <tr>
                                        <th class="text-center py-5">02:00PM</th>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/06.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Tara Arrington</h6>
                                                    <small class="text-muted">Neurology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">02:00PM - 04:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/05.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Jennifer Ballance</h6>
                                                    <small class="text-muted">Cardiology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">11:00AM - 12:00PM</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    
                                    <tr>
                                        <th class="text-center py-5">04:00PM</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/06.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Tara Arrington</h6>
                                                    <small class="text-muted">Neurology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">04:00PM - 05:00PM</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/06.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Tara Arrington</h6>
                                                    <small class="text-muted">Neurology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">04:30PM - 06:00PM</small>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th class="text-center py-5">06:00PM</th>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/03.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Alia Reddy</h6>
                                                    <small class="text-muted">Psychotherapy</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">06:00PM - 09:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/04.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Toni Kovar</h6>
                                                    <small class="text-muted">Orthopedic</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">07:00PM - 08:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/05.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Jennifer Ballance</h6>
                                                    <small class="text-muted">Cardiology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">06:00PM - 07:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/03.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Alia Reddy</h6>
                                                    <small class="text-muted">Psychotherapy</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">06:00PM - 07:00PM</small>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th class="text-center py-5">09:00PM</th>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/04.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Toni Kovar</h6>
                                                    <small class="text-muted">Orthopedic</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00PM - 10:00PM</small>
                                        </td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/05.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Jennifer Ballance</h6>
                                                    <small class="text-muted">Cardiology</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00PM - 10:00PM</small>
                                        </td>
                                        <td></td>
                                        <td>
                                            <div class="d-flex mb-3">
                                                <img src="images/doctors/04.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                <div class="ms-3">
                                                    <h6 class="text-dark mb-0 d-block">Toni Kovar</h6>
                                                    <small class="text-muted">Orthopedic</small>
                                                </div>
                                            </div>
                                            <small class="bg-soft-primary rounded py-1 px-2 d-block text-center">09:00PM - 10:00PM</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <!-- End -->
                                </tbody>
                            </table>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-fluid-->
        </section><!--end section-->
        <!-- End -->--%>

        <!-- Start -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h4 class="title mb-4">Doctors</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row align-items-center">
                <asp:Repeater runat="server" DataSourceID="SqlDataSource4">
                <ItemTemplate>
                        <div class="col-xl-3 col-lg-3 col-md-6 mt-4 pt-2">
                        <div class="card team border-0 rounded shadow overflow-hidden">
                            <div class="team-img position-relative">
                                <%--<img src="images/doctors/01.jpg" class="img-fluid" alt="">--%>
                                <img src="../DocImg/<%#Eval("img")%>" alt="Royal Hospitals Admin Template" class="profile" height="400" width="400">
                                <ul class="list-unstyled team-social mb-0">
                                    <li><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="facebook" class="icons"></i></a></li>
                                    <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="linkedin" class="icons"></i></a></li>
                                    <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="github" class="icons"></i></a></li>
                                    <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="twitter" class="icons"></i></a></li>
                                </ul>
                            </div>
                            <div class="card-body content text-center">
                                <a href="Display_doc.aspx" class="title text-dark h5 d-block mb-0"><%#Eval("name") %></a>
                                <small class="text-muted speciality"><%#Eval("desg") %></small>
                            </div>
                        </div>
                    </div><!--end col-->
                </ItemTemplate>
                </asp:Repeater>
                
                    
                   
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Doctor_mstr]"></asp:SqlDataSource>
                
                    
                   
                    <div class="col-12 mt-4 pt-2 text-center">
                        <a href="Display_doc.aspx" class="btn btn-primary">See More</a>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        <%--<!-- Start -->
        <section class="section pt-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="video-solution-cta position-relative" style="z-index: 1;">
                            <div class="position-relative">
                                <img src="images/bg/01.jpg" class="img-fluid rounded-md shadow-lg" alt="">
                                <div class="play-icon">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#watchvideomodal" class="play-btn video-play-icon">
                                        <i class="mdi mdi-play text-primary rounded-circle bg-white shadow-lg"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="content">
                                <div class="row" id="counter">
                                    <div class="col-md-4 mt-4 pt-2">
                                        <div class="counter-box text-center">
                                            <h1 class="mt-3 text-white title-dark"><span class="counter-value" data-target="99">10</span>%</h1>
                                            <h5 class="counter-head text-white mb-1">Positive feedback</h5>
                                            <p class="text-white-50 mb-0">From Doctors</p>
                                        </div><!--end counter box-->
                                    </div><!--end col-->
                
                                    <div class="col-md-4 mt-4 pt-2">
                                        <div class="counter-box text-center">
                                            <h1 class="mt-3 text-white title-dark"><span class="counter-value" data-target="25">2</span>+</h1>
                                            <h5 class="counter-head text-white mb-1">Experienced Clinics</h5>
                                            <p class="text-white-50 mb-0">High Qualified</p>
                                        </div><!--end counter box-->
                                    </div><!--end col-->
                
                                    <div class="col-md-4 mt-4 pt-2">
                                        <div class="counter-box text-center">
                                            <h1 class="mt-3 text-white title-dark"><span class="counter-value" data-target="1251">95</span>+</h1>
                                            <h5 class="counter-head text-white mb-1">Questions & Answers</h5>
                                            <p class="text-white-50 mb-0">Your Questions</p>
                                        </div><!--end counter box-->
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row -->
                <div class="feature-posts-placeholder bg-primary"></div>
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->--%>

        <!-- Start -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h4 class="title mb-4">Patients Says</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row justify-content-center">
                    <div class="col-lg-8 mt-4 pt-2 text-center">
                    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                                 <div class="client-review-slider">
                            <div class="tiny-slide text-center">
                                <p class="text-muted h6 fw-normal fst-italic"><%#Eval("review") %></p>
                                <img src="../User_img/<%#Eval("img")%>" class="img-fluid avatar avatar-small rounded-circle mx-auto shadow my-3" alt="">
                                <ul class="list-unstyled mb-0">
                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                </ul>
                                <h6 class="text-primary" class="text-muted"><%#Eval("name") %></small></h6>
                            </div><!--end customer testi-->
                       
                    </ItemTemplate>
                    </asp:Repeater>
                            
                          
                            
                           
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Feedback_mstr]"></asp:SqlDataSource>
                            
                          
                            
                           
                        </div><!--end carousel-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-100 mt-60">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <span class="badge badge-pill badge-soft-primary mb-3">Read News</span>
                            <h4 class="title mb-4">Latest News & Blogs</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                <asp:Repeater runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                   <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card blog blog-primary border-0 shadow rounded overflow-hidden">
                            <img src="../Lab_events/<%#Eval("img")%>" class="img-fluid" alt="">
                            <div class="card-body p-4">
                                <ul class="list-unstyled mb-2">
                                    <li class="list-inline-item text-muted small me-3"><i class="uil uil-calendar-alt text-dark h6 me-1"></i><%#Eval("date") %></li>
                                    <li class="list-inline-item text-muted small"><i class="uil uil-clock text-dark h6 me-1"></i></li>
                                </ul>
                                <a href="Display_event.aspx" class="text-dark title h5"><%#Eval("ename") %></a>
                                <div class="post-meta d-flex justify-content-between mt-3">
                                    <ul class="list-unstyled mb-0">
                                        <%--<li class="list-inline-item me-2 mb-0"><a href="#" class="text-muted like"><i class="mdi mdi-heart-outline me-1"></i>33</a></li>
                                        <li class="list-inline-item"><a href="#" class="text-muted comments"><i class="mdi mdi-comment-outline me-1"></i>08</a></li>--%>
                                    </ul>
                                    <a href="Display_event.aspx" class="link">Read More <i class="mdi mdi-chevron-right align-middle"></i></a>
                                </div>
                            </div>
                        </div>
                    </div><!--end col-->

                </ItemTemplate>
                </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Event_mstr]"></asp:SqlDataSource>
                  
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        <!-- Partners start -->
        <section class="py-4 bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/amazon.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/google.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->
                    
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/lenovo.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->
                    
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/paypal.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->
                    
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/shopify.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->
                    
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4">
                        <img src="images/client/spotify.svg" class="avatar avatar-client" alt="">
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Partners End -->

        
        <!-- Back to top -->
        <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-pills btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>
        <!-- Back to top -->

        <!-- MOdal Start -->
        <div class="modal fade" id="watchvideomodal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content video-modal rounded overflow-hidden">
                    <video class="w-100" controls autoplay muted loop>
                        <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
                        <!--Browser does not support <video> tag -->
                    </video>
                </div>
            </div>
        </div>
        <!-- MOdal End -->
        
        
        </form>
        
        
</asp:Content>

