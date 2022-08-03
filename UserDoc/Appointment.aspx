<%@ Page Title="" Language="C#" MasterPageFile="~/UserDoc/MasterPage.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="UserDoc_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <!-- Start Hero -->
        <section class="bg-half-170 d-table w-100 bg-light">
            <div class="container">
                <div class="row mt-5 justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="sub-title mb-4">Book an appointment</h3>
                            <p class="para-desc mx-auto text-muted">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        
                            <nav aria-label="breadcrumb" class="d-inline-block mt-3">
                                <ul class="breadcrumb bg-transparent mb-0 py-1">
                                    <li class="breadcrumb-item"><a href="index.html">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Appointment</li>
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
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card border-0 shadow rounded overflow-hidden">
                            <ul class="nav nav-pills nav-justified flex-column flex-sm-row rounded-0 shadow overflow-hidden bg-light mb-0" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link rounded-0 active" id="clinic-booking" data-bs-toggle="pill" href="#pills-clinic" role="tab" aria-controls="pills-clinic" aria-selected="false">
                                        <div class="text-center pt-1 pb-1">
                                            <h4 class="title fw-normal mb-0">Schedule Your Appointment</h4>
                                        </div>
                                    </a><!--end nav link-->
                                </li><!--end nav item-->
                                
                                <%--<li class="nav-item">
                                    <a class="nav-link rounded-0" id="online-booking" data-bs-toggle="pill" href="#pills-online" role="tab" aria-controls="pills-online" aria-selected="false">
                                        <div class="text-center pt-1 pb-1">
                                            <h4 class="title fw-normal mb-0">Online Appointment</h4>
                                        </div>
                                    </a><!--end nav link-->
                                </li><!--end nav item-->--%>
                            </ul>
    
                            <div class="tab-content p-4" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-clinic" role="tabpanel" aria-labelledby="clinic-booking">
                              
                                    <form runat="server">
                                      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Patient Name <span class="text-danger"></span></label>
                                                <asp:TextBox ID="txtpname" runat="server" class="form-control" 
                                                        placeholder="Patient Name :" ReadOnly="True" ></asp:TextBox>
                                              
                                                   <%-- <input name="name" id="name" type="text" class="form-control" placeholder="Patient Name :">--%>
                                                </div>
                                            </div><!--end col-->
                                              
                                                <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Select Hospital </label>
                                                    <%--<select class="form-control department-name select2input">
                                                        <option value="EY">Eye Care</option>
                                                        <option value="GY">Gynecologist</option>
                                                        <option value="PS">Psychotherapist</option>
                                                        <option value="OR">Orthopedic</option>
                                                        <option value="DE">Dentist</option>
                                                        <option value="GA">Gastrologist</option>
                                                        <option value="UR">Urologist</option>
                                                        <option value="NE">Neurologist</option>
                                                    </select>--%>
                                              <asp:DropDownList ID="ddlhos"  class="form-control department-name select2input" 
                                                        runat="server" DataSourceID="SqlDataSource1" DataTextField="name" 
                                                        DataValueField="name" AutoPostBack="True"></asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Hospital_mstr] WHERE ([status] = @status)">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </div>
                                            </div><!--end col-->
                                              <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Select Branch <span class="text-danger"></span></label>
                                                    <asp:DropDownList ID="ddlbranch" class="form-control doctor-name select2input" 
                                                        runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" 
                                                        DataTextField="branch" DataValueField="branch"></asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([hospital] = @hospital)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlhos" Name="hospital" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </div> 
                                            </div><!--end col-->
                                        
                                            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Select Doctor</label>
                                                    <%--<select class="form-control doctor-name select2input">
                                                        <option value="CA">Dr. Calvin Carlo</option>
                                                        <option value="CR">Dr. Cristino Murphy</option>
                                                        <option value="AL">Dr. Alia Reddy</option>
                                                        <option value="TO">Dr. Toni Kovar</option>
                                                        <option value="JE">Dr. Jessica McFarlane</option>
                                                        <option value="EL">Dr. Elsie Sherman</option>
                                                        <option value="BE">Dr. Bertha Magers</option>
                                                        <option value="LO">Dr. Louis Batey</option>
                                                    </select>--%>
                                                    
                                                    <asp:DropDownList ID="ddldoc" class="form-control doctor-name select2input" 
                                                        runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" 
                                                        DataTextField="name" DataValueField="name">                                                        
                                                    </asp:DropDownList>                                                       
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([hospital] = @hospital)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlhos" Name="hospital" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </div>
                                            </div><!--end col-->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Select Speciality</label>
                                                    <%--<select class="form-control doctor-name select2input">
                                                        <option value="CA">Dr. Calvin Carlo</option>
                                                        <option value="CR">Dr. Cristino Murphy</option>
                                                        <option value="AL">Dr. Alia Reddy</option>
                                                        <option value="TO">Dr. Toni Kovar</option>
                                                        <option value="JE">Dr. Jessica McFarlane</option>
                                                        <option value="EL">Dr. Elsie Sherman</option>
                                                        <option value="BE">Dr. Bertha Magers</option>
                                                        <option value="LO">Dr. Louis Batey</option>
                                                    </select>--%>
                                                    
                                                    <asp:DropDownList ID="ddldesg" class="form-control doctor-name select2input" 
                                                        runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" 
                                                        DataTextField="desg" DataValueField="desg"></asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([name] = @name)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="ddldoc" Name="name" 
                                                                    PropertyName="SelectedValue" Type="String" />
                                                            </SelectParameters>
                                                    </asp:SqlDataSource>                                                                                                         
                                                        </div>                                                        
                                                        </div>
                                                        
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Your Email <span class="text-danger"></span></label>
                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" 
                                                        placeholder="Your email :" ReadOnly="True"></asp:TextBox>
                                                    <%--    <asp:Label ID="lblemail" runat="server" Text=""  class="form-control" ></asp:Label>--%>
                                                   <%-- <input name="email" id="email" type="email" class="form-control" placeholder="Your email :">--%>
                                                </div> 
                                            </div><!--end col-->            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Your Phone <span class="text-danger"></span></label>
                                       <%--         <asp:Label ID="lblphno"  class="form-control"  runat="server" Text=""></asp:Label>--%>
                                                       <asp:TextBox ID="txtphno" class="form-control" placeholder="Your Phone No :" 
                                                        runat="server" ReadOnly="True"></asp:TextBox>
                                                 <%--   <input name="phone" id="phone" type="tel" class="form-control" placeholder="Your Phone :">--%>
                                                </div> 
                                            </div><!--end col-->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Date<span class="text-danger"></span></label>
                                                    <asp:TextBox ID="txtdate" class="form-control" placeholder="Today's Date :" 
                                                        runat="server" TextMode="Date"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Select A Date*" 
                                                        ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <%--<input name="phone" id="Tel1" type="tel" class="form-control" placeholder="Your Phone :">--%>
                                                </div> 
                                            </div><!--end col-->                                                                                        
                                               <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Fees<span class="text-danger"></span></label>
                                                <asp:DropDownList ID="ddlfees" class="form-control" runat="server" 
                                                         DataTextField="fees" DataValueField="fees" 
                                                        AutoPostBack="True" DataSourceID="SqlDataSource5"></asp:DropDownList>
                                                   
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Doctor_mstr] WHERE (([hospital] = @hospital) AND ([name] = @name))">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlhos" Name="hospital" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="ddldoc" Name="name" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                   
                                                    <%--<input name="phone" id="Tel1" type="tel" class="form-control" placeholder="Your Phone :">--%>
                                                </div> 
                                            </div><!--end col-->
            

                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Comments <span class="text-danger"></span></label>
                                                        <asp:TextBox ID="txtcmnts" class="form-control" rows="4" 
                                                        placeholder="Your Message :" runat="server" TextMode="MultiLine"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Comment*" 
                                                        ControlToValidate="txtcmnts" ForeColor="Red"></asp:RequiredFieldValidator>
                                                  <%--  <textarea name="comments" id="comments" rows="4" class="form-control" placeholder="Your Message :"></textarea>--%>
                                                </div>
                                            </div><!--end col-->                                                    
                                            
                                            <div class="col-lg-12">
                                                <div class="d-grid">
                                                       <asp:Button ID="btn_submit" runat="server" Text="Book An Appointment" 
                                                           class="btn btn-primary" onclick="btn_submit_Click"></asp:Button>
                                                    <%--<button type="submit" class="btn btn-primary">Book An Appointment</button>--%>
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->      
                                        </ContentTemplate>
                                                    </asp:UpdatePanel>                                    
                                    </form>

                                </div>
                               
                                <%--<div class="tab-pane fade" id="pills-online" role="tabpanel" aria-labelledby="online-booking">
                                    <form>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Patient Name <span class="text-danger">*</span></label>
                                                    <input name="name" id="name2" type="text" class="form-control" placeholder="Patient Name :">
                                                </div>
                                            </div><!--end col-->
                                            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Departments</label>
                                                    <select class="form-control department-name select2input">
                                                        <option value="EY">Eye Care</option>
                                                        <option value="GY">Gynecologist</option>
                                                        <option value="PS">Psychotherapist</option>
                                                        <option value="OR">Orthopedic</option>
                                                        <option value="DE">Dentist</option>
                                                        <option value="GA">Gastrologist</option>
                                                        <option value="UR">Urologist</option>
                                                        <option value="NE">Neurologist</option>
                                                    </select>
                                                </div>
                                            </div><!--end col-->
                                            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Doctor</label>
                                                    <select class="form-control doctor-name select2input">
                                                        <option value="CA">Dr. Calvin Carlo</option>
                                                        <option value="CR">Dr. Cristino Murphy</option>
                                                        <option value="AL">Dr. Alia Reddy</option>
                                                        <option value="TO">Dr. Toni Kovar</option>
                                                        <option value="JE">Dr. Jessica McFarlane</option>
                                                        <option value="EL">Dr. Elsie Sherman</option>
                                                        <option value="BE">Dr. Bertha Magers</option>
                                                        <option value="LO">Dr. Louis Batey</option>
                                                    </select>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Your Email <span class="text-danger">*</span></label>
                                                    <input name="email" id="email2" type="email" class="form-control" placeholder="Your email :">
                                                </div> 
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Your Phone <span class="text-danger">*</span></label>
                                                    <input name="phone" id="phone2" type="tel" class="form-control" placeholder="Your Phone :">
                                                </div> 
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label"> Date : </label>
                                                    <input name="date" type="text" class="flatpickr flatpickr-input form-control" id="checkin-date">
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label" for="input-time">Time : </label>
                                                    <input name="time" type="text" class="form-control timepicker" id="input-time" placeholder="03:30 PM">
                                                </div> 
                                            </div><!--end col-->
            
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Comments <span class="text-danger">*</span></label>
                                                    <textarea name="comments" id="comments2" rows="4" class="form-control" placeholder="Your Message :"></textarea>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-lg-12">
                                                <div class="d-grid">
                                                    <button type="submit" class="btn btn-primary">Book An Appointment</button>
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </form>
                                </div>--%>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        <!-- Start -->
        <footer class="bg-footer">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-4 mb-0 mb-md-4 pb-0 pb-md-2">
                        <a href="#" class="logo-footer">
                            <img src="images/logo-light.png" height="24" alt="">
                        </a>
                        <p class="mt-4 me-xl-5">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                    </div><!--end col-->

                    <div class="col-xl-7 col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                <h5 class="text-light footer-head">Company</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li><a href="aboutus.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> About us</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Services</a></li>
                                    <li><a href="doctor-team-two.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Team</a></li>
                                    <li><a href="blog-detail.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Project</a></li>
                                    <li><a href="blogs.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Blog</a></li>
                                    <li><a href="login.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Login</a></li>
                                </ul>
                            </div><!--end col-->
                            
                            <div class="col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                <h5 class="text-light footer-head">Departments</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Eye Care</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Psychotherapy</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Dental Care</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Orthopedic</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Cardiology</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Gynecology</a></li>
                                    <li><a href="departments.html" class="text-foot"><i class="mdi mdi-chevron-right me-1"></i> Neurology</a></li>
                                </ul>
                            </div><!--end col-->
                            
                            <div class="col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                <h5 class="text-light footer-head">Contact us</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li class="d-flex align-items-center">
                                        <i data-feather="mail" class="fea icon-sm text-foot align-middle"></i>
                                        <a href="mailto:contact@example.com" class="text-foot ms-2">contact@example.com</a>
                                    </li>

                                    <li class="d-flex align-items-center">
                                        <i data-feather="phone" class="fea icon-sm text-foot align-middle"></i>
                                        <a href="tel:+152534-468-854" class="text-foot ms-2">+152 534-468-854</a>
                                    </li>

                                    <li class="d-flex align-items-center">
                                        <i data-feather="map-pin" class="fea icon-sm text-foot align-middle"></i>
                                        <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39206.002432144705!2d-95.4973981212445!3d29.709510002925988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8640c16de81f3ca5%3A0xf43e0b60ae539ac9!2sGerald+D.+Hines+Waterwall+Park!5e0!3m2!1sen!2sin!4v1566305861440!5m2!1sen!2sin" class="video-play-icon text-foot ms-2">View on Google map</a>
                                    </li>
                                </ul>

                                <ul class="list-unstyled social-icon footer-social mb-0 mt-4">
                                    <li class="list-inline-item"><a href="#" class="rounded-pill"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="#" class="rounded-pill"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="#" class="rounded-pill"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="#" class="rounded-pill"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                </ul><!--end icon-->
                            </div><!--end col-->
                        </div><!--end row-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-5">
                <div class="pt-4 footer-bar">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="text-sm-start text-center">
                                <p class="mb-0"><script>                                                    document.write(new Date().getFullYear())</script> © Doctris. Design with <i class="mdi mdi-heart text-danger"></i> by <a href="http://shreethemes.in/" target="_blank" class="text-reset">Shreethemes</a>.</p>
                            </div>
                        </div><!--end col-->
    
                        <div class="col-sm-6 mt-4 mt-sm-0">
                            <ul class="list-unstyled footer-list text-sm-end text-center mb-0">
                                <li class="list-inline-item"><a href="terms.html" class="text-foot me-2">Terms</a></li>
                                <li class="list-inline-item"><a href="privacy.html" class="text-foot me-2">Privacy</a></li>
                                <li class="list-inline-item"><a href="aboutus.html" class="text-foot me-2">About</a></li>
                                <li class="list-inline-item"><a href="contact.html" class="text-foot me-2">Contact</a></li>
                            </ul>
                        </div><!--end col-->
                    </div><!--end row-->
                </div>
            </div><!--end container-->
        </footer><!--end footer-->
        <!-- End -->

        <!-- Back to top -->
        <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-pills btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>
        <!-- Back to top -->
        
        
</asp:Content>


