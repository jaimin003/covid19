<%@ Page Title="" Language="C#" MasterPageFile="~/UserDoc/MasterPage.master" AutoEventWireup="true" CodeFile="Event_details.aspx.cs" Inherits="UserDoc_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




        <form id="form1" runat="server">




        <!-- Start Hero -->
        <section class="bg-half-150 d-table w-100 bg-light">
            <div class="container">
                <div class="row mt-5 justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="sub-title mb-4">Lockdowns lead to fewer people seeking medical care</h3>
                            <p class="para-desc mx-auto text-muted">Great doctor if you need your family member to get effective immediate assistance, emergency treatment or a simple consultation.</p>
                        
                            <ul class="list-unstyled mt-4">
                                <%--<li class="list-inline-item user text-muted me-2"><i class="mdi mdi-account"></i> Calvin Carlo</li>
                                <li class="list-inline-item date text-muted"><i class="mdi mdi-calendar-check"></i> 1st January, 2021</li>
--%>                            </ul>
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
                    <div class="col-lg-12 col-lg-7">
                        <%--<img src="images/blog/single.jpg" class="img-fluid rounded shadow" alt="">--%>
                        <asp:Image ID="Image1" runat="server" class="img-fluid rounded shadow"></asp:Image>

                        <!-- <ul class="list-unstyled mt-4">
                            <li class="list-inline-item user text-muted me-2"><i class="mdi mdi-account"></i> Calvin Carlo</li>
                            <li class="list-inline-item date text-muted"><i class="mdi mdi-calendar-check"></i> 1st January, 2021</li>
                        </ul> -->

                        <p class="text-muted mt-4"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                        
                    
                        <h5 class="card-title mt-4 mb-0">Comments :</h5>

                        <ul class="media-list list-unstyled mb-0">
                            <li class="mt-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <a class="pe-3" href="#">
                                            <img src="images/client/01.jpg" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img">
                                        </a>
                                        <div class="commentor-detail">
                                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark media-heading">Lorenzo Peterson</a></h6>
                                            <small class="text-muted">15th August, 2019 at 01:25 pm</small>
                                        </div>
                                    </div>
                                    <a href="#" class="text-muted"><i class="mdi mdi-reply"></i> Reply</a>
                                </div>
                                <div class="mt-3">
                                    <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                </div>
                            </li>

                            <li class="mt-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <a class="pe-3" href="#">
                                            <img src="images/client/02.jpg" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img">
                                        </a>
                                        <div class="commentor-detail">
                                            <h6 class="mb-0"><a href="javascript:void(0)" class="media-heading text-dark">Tammy Camacho</a></h6>
                                            <small class="text-muted">15th August, 2019 at 05:44 pm</small>
                                        </div>
                                    </div>
                                    <a href="#" class="text-muted"><i class="mdi mdi-reply"></i> Reply</a>
                                </div>
                                <div class="mt-3">
                                    <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                </div>
                            </li>
                            
                            <li class="mt-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <a class="pe-3" href="#">
                                            <img src="images/client/03.jpg" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img">
                                        </a>
                                        <div class="commentor-detail">
                                            <h6 class="mb-0"><a href="javascript:void(0)" class="media-heading text-dark">Tammy Camacho</a></h6>
                                            <small class="text-muted">16th August, 2019 at 03:44 pm</small>
                                        </div>
                                    </div>
                                    <a href="#" class="text-muted"><i class="mdi mdi-reply"></i> Reply</a>
                                </div>
                                <div class="mt-3">
                                    <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                </div>

                                <ul class="list-unstyled ps-4 ps-md-5 sub-comment">
                                    <li class="mt-4">
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <a class="pe-3" href="#">
                                                    <img src="images/client/01.jpg" class="img-fluid avatar avatar-md-sm rounded-circle shadow" alt="img">
                                                </a>
                                                <div class="commentor-detail">
                                                    <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark media-heading">Lorenzo Peterson</a></h6>
                                                    <small class="text-muted">17th August, 2019 at 01:25 pm</small>
                                                </div>
                                            </div>
                                            <a href="#" class="text-muted"><i class="mdi mdi-reply"></i> Reply</a>
                                        </div>
                                        <div class="mt-3">
                                            <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    
                        <h5 class="card-title mt-4 mb-0">Leave A Comment :</h5>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Your Comment</label>
                                        <textarea id="message" placeholder="Your Comment" rows="5" name="message" class="form-control" required=""></textarea>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Name <span class="text-danger">*</span></label>
                                        <input id="name" name="name" type="text" placeholder="Name" class="form-control" required="">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Your Email <span class="text-danger">*</span></label>
                                        <input id="email" type="email" placeholder="Email" name="email" class="form-control" required="">
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-12">
                                    <div class="send d-grid">
                                        <button type="submit" class="btn btn-primary">Send Message</button>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        <!--end form-->
                    </div><!--end col-->

                    <%--<div class="col-lg-4 col-md-5 mt-4 mt-sm-0 pt-2 pt-sm-0">
                        <div class="card border-0 sidebar sticky-bar rounded shadow">
                            <div class="card-body">
                                <!-- SEARCH -->
                                <div class="widget mb-4 pb-2">
                                    <h5 class="widget-title">Search</h5>
                                    <div id="search2" class="widget-search mt-4 mb-0">
                                            <div>
                                                <input type="text" class="border rounded" name="s" id="s" placeholder="Search Keywords...">
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </div>
                                    </div>
                                </div>
                                <!-- SEARCH -->
    
                                <!-- RECENT POST -->
                                <div class="widget mb-4 pb-2">
                                    <h5 class="widget-title">Recent Post</h5>
                                    <div class="mt-4">
                                        <div class="clearfix post-recent">
                                            <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img alt="img" src="images/blog/07.jpg" class="img-fluid rounded"></a></div>
                                            <div class="post-recent-content float-start"><a href="jvascript:void(0)">Consultant Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                        </div>
                                        <div class="clearfix post-recent">
                                            <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img alt="img" src="images/blog/08.jpg" class="img-fluid rounded"></a></div>
                                            <div class="post-recent-content float-start"><a href="jvascript:void(0)">Look On The Glorious Balance</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                        </div>
                                        <div class="clearfix post-recent">
                                            <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img alt="img" src="images/blog/01.jpg" class="img-fluid rounded"></a></div>
                                            <div class="post-recent-content float-start"><a href="jvascript:void(0)">Research Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- RECENT POST -->
    
                    --%>            <%--<!-- TAG CLOUDS -->
                                <div class="widget mb-4 pb-2">
                                    <h5 class="widget-title">Tags Cloud</h5>
                                    <div class="tagcloud mt-4">
                                        <a href="jvascript:void(0)" class="rounded">Business</a>
                                        <a href="jvascript:void(0)" class="rounded">Finance</a>
                                        <a href="jvascript:void(0)" class="rounded">Marketing</a>
                                        <a href="jvascript:void(0)" class="rounded">Fashion</a>
                                        <a href="jvascript:void(0)" class="rounded">Bride</a>
                                        <a href="jvascript:void(0)" class="rounded">Lifestyle</a>
                                        <a href="jvascript:void(0)" class="rounded">Travel</a>
                                        <a href="jvascript:void(0)" class="rounded">Beauty</a>
                                        <a href="jvascript:void(0)" class="rounded">Video</a>
                                        <a href="jvascript:void(0)" class="rounded">Audio</a>
                                    </div>
                                </div>
                                <!-- TAG CLOUDS -->
                                
                                <!-- SOCIAL -->
                                <div class="widget">
                                    <h5 class="widget-title">Follow us</h5>
                                    <ul class="list-unstyled social-icon mb-0 mt-4">
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="github" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="youtube" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="gitlab" class="fea icon-sm fea-social"></i></a></li>
                                    </ul><!--end icon-->
                                </div>
                                <!-- SOCIAL -->--%>
                            </div>
                        </div>
                    </div>
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-100 mt-60">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h4 class="title mb-0">Related Post:</h4>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                    <div class="col-lg-12 mt-4 pt-2">
                    
                        <div class="slider-range-three">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                            <div class="tiny-slide">
                            
                                          <div class="card blog blog-primary border-0 shadow rounded overflow-hidden m-1">
                                    <img src="../Lab_events/<%#Eval("img") %>" class="img-fluid" alt="">
                                    <div class="card-body p-4">
                                        <ul class="list-unstyled mb-2">
                                            <li class="list-inline-item text-muted small me-3"><i class="uil uil-calendar-alt text-dark h6 me-1"></i><%#Eval("date") %></li>
                                            <li class="list-inline-item text-muted small"><i class="uil uil-clock text-dark h6 me-1"></i>5 min read</li>
                                        </ul>
                                        <a href="Event_details.aspx?img=<%#Eval("img") %>&desg=<%#Eval("description") %>" class="text-dark title h5"><%#Eval("ename") %></a>
                                        <div class="post-meta d-flex justify-content-between mt-3">
                                            <ul class="list-unstyled mb-0">
                                                <li class="list-inline-item me-2 mb-0"><a href="#" class="text-muted like"><i class="mdi mdi-heart-outline me-1"></i>33</a></li>
                                                <li class="list-inline-item"><a href="#" class="text-muted comments"><i class="mdi mdi-comment-outline me-1"></i>08</a></li>
                                            </ul>
                                            <a href="Event_details.aspx?img=<%#Eval("img") %>&desg=<%#Eval("description") %>" class="link">Read More <i class="mdi mdi-chevron-right align-middle"></i></a>
                                        </div>
                                    </div>
                                </div>
                          
                            </div>
        
                          
                        </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Event_mstr]"></asp:SqlDataSource>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        <!-- Start -->
       

        
    
        </form>
</asp:Content>

