<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="Uhome.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		<form id="form1" runat="server">

		<!-- Banner Section start here -->
		<section class="banner-section home-7">
			<div class="banner-area">
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-6 col-12">
							<div class="content-part">
								<div class="banner-content">
                                    <h2><span>Raise Your Hand </span></h2>
                                    <h2 class="banner-title">COVID19</h2>
                                    <h4>Healthcare Professionals And Researchers</h4>
                                    <a href="plazma.aspx" class="lab-btn style-2"><span>donate now <i class="icofont-heart"></i></span></a>
								</div>
							</div>
                        </div>
						<div class="col-md-6 col-12">
                            <div class="banner-round">
                                <img src="assets/images/banner/home-7/01.png" alt="banner">
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</section>
        <!-- Banner Section ending here -->

        <!-- corona count section start here -->
        <section class="corona-count-section bg-corona padding-tb pt-0">
            <div class="container">
				<div class="corona-wrap">
					<div class="corona-count-top wow fadeInUp" data-wow-delay="0.3s">
						<div class="row justify-content-center align-items-center">
							<div class="col-xl-3 col-md-6 col-12">
								<h5>Total Corona Statistics :</h5>
							</div>
							<div class="col-xl-3 col-md-6 col-12">
								<div class="corona-item">
									<div class="corona-inner">
										<div class="corona-thumb">
											<img src="assets/images/corona/01.png" alt="corona">
										</div>
										<div class="corona-content">
											<h3 class="count-number"><asp:Label ID="tc1" runat="server" Text="Label"></asp:Label></h3>
											<p>Total Cases</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-md-6 col-12">
								<div class="corona-item">
									<div class="corona-inner">
										<div class="corona-thumb">
											<img src="assets/images/corona/02.png" alt="corona">
										</div>
										<div class="corona-content">
											<h3 class="count-number"><asp:Label ID="trc1" runat="server" Text="Label"></asp:Label></h3>
											<p>Recovered Cases</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-md-6 col-12">
								<div class="corona-item">
									<div class="corona-inner">
										<div class="corona-thumb">
											<img src="assets/images/corona/03.png" alt="corona">
										</div>
										<div class="corona-content">
											<h3 class="count-number"><asp:Label ID="td1" runat="server" Text="Label"></asp:Label></h3>
											<p>Deaths</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
            </div>
        </section>
        <!-- corona count section ending here -->
        

        <!-- Service Section Start Here -->
        <section class="service-section home-4 home-7 bg-f9 padding-tb">
            <div class="container">
                <div class="section-wrapper">
                    <div class="row justify-content-center">
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="service-item text-center">
                                <div class="service-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/01.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <h5>Donate Plasma</h5>
                                        <p>Our comprehensive Online Marketing strategy will boost your website trafic hence monthly sales.</p>
                                        <a href="plazma.aspx" class="text-btn">Donate now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="service-item text-center">
                                <div class="service-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/02.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <h5>Contact Us</h5>
                                        <p>Our comprehensive Online Marketing strategy will boost your website trafic hence monthly sales.</p>
                                        <a href="Contactus.aspx" class="text-btn">contact now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="0.6s">
                            <div class="service-item text-center">
                                <div class="service-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/03.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <h5>About Us</h5>
                                        <p>Our comprehensive Online Marketing strategy will boost your website trafic hence monthly sales.</p>
                                        <a href="Aboutus.aspx" class="text-btn">Know Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Service Section Ending Here -->

        <!-- corona count section start here -->
        <section class="corona-count-section bg_img home-7 padding-tb" style="background-image: url(assets/css/bg-image/bg-5.jpg);">
            <div class="container">
                <div class="corona-count-bottom">
                    <div class="row justify-content-center align-items-center flex-row-reverse">
                        <div class="col-lg-6 col-12">
                            <div class="ccb-thumb-content">
                                <div class="ccb-title text-left wow fadeInUp" data-wow-delay="0.2s">
                                    
                                    <h2>Update About Coronavirus</h2>
                                </div>
                                <ul class="lab-ul">
                                    <li class="media mb-2 p-4 bg-white align-items-center wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <img src="assets/images/corona/01.png" class="mr-3" alt="corona">
                                        <div class="media-body text-left">
                                            <h4><span>there are</span></h4>
                                            <h2 class="mb-0 count-number"><asp:Label ID="tac2" runat="server" Text=""></asp:Label></h2>
                                            <p class="mb-0">Total Active Coronavirus Cases </p>
                                      </div>
                                    </li>
                                    <li class="media mb-2 p-4 bg-white align-items-center wow fadeInUp" data-wow-delay="0.4s">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <img src="assets/images/corona/02.png" class="mr-3" alt="corona">
                                        <div class="media-body text-left">
                                            <h4><span>there are</span></h4>
                                            <h2 class="mb-0 count-number"><asp:Label ID="tc2" runat="server" Text=""></asp:Label></h2>
                                            <p class="mb-0">Total Cases in 24 Hrs</p>
                                      </div>
                                    </li>
                                    <li class="media mb-2 p-4 bg-white align-items-center wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <img src="assets/images/corona/03.png" class="mr-3" alt="corona">
                                        <div class="media-body text-left">
                                            <h4><span>there are</span></h4>
                                            <h2 class="mb-0 count-number"><asp:Label ID="td2" runat="server" Text=""></asp:Label></h2>
                                            <p class="mb-0">Total Deaths in 24 Hrs</p>
                                      </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="ccb-content wow fadeInLeft" data-wow-delay="0.4s">
                                <h4><span>WE ARE IN A MISSION</span></h4>
                                <h2>An Outbreak of the 2019 Novel Coronavirus Caused</h2>
                                <p><em><b>Coronavirus COVID-19 Global Cases map developed by the Johns Hopkins Center for Systems Science and Engineering.</b></em></p>
                                <p>Coronaviruses are type of virus. There are many different kinds, & some cause disease newly identified type has caused recent outbreak of respiratory ilness now called COVID-19 that started in China.</p>
                                <p>COVID-19 is the disease caused by the new coronavirus that emerged in China in December 2019.</p>
                                <p>COVID-19 symptoms include cough fever and shortness breath. COVID-19 can be severe, and some cases have caused death.</p>
                                <p>The new coronavirus can be spread from person to person. It is diagnosed with a laboratory test.</p>
                                <a href="../UserCovid/adclogin/FeedBack.aspx" class="lab-btn style-2"><span>Give FeedBack Now</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- corona count section ending here -->

        <!-- service section start here -->
        <section class="service-section home-7 padding-tb bg-f9">
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.4s">
                    <h4><span>OUR SERVICES</span></h4>
                    <h2>Health Well Foundation</h2>
                </div>

                <div class="section-wrapper">
                    <div class="row justify-content-center">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-lg-6 col-12 wow fadeInUp" data-wow-delay="0.4s">
                        
                            <div class="service-item style-3">
                                <div class="service-inner">
                                    <div class="service-thumb">
                                     <img src="../lab_service_img/<%#Eval("img") %>" alt="servoce-icon">
                                        
                                    </div>
                                    <div class="service-content">
                                        
                                        <h5><%#Eval("servicename") %></h5>
                                        <p><%#Eval("description") %></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </ItemTemplate>
                        </asp:ListView>
                       
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Service_mstr]"></asp:SqlDataSource>
                       
                       
                     <%--   <div class="col-lg-6 col-12 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="service-item style-3">
                                <div class="service-inner">
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/05.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <div class="sc-shape">
                                            <img src="assets/images/service/home-7/icon/shape.png" alt="sc-shape">
                                        </div>
                                        <div class="service-icon">
                                            <img src="assets/images/service/home-7/icon/02.png" alt="servoce-icon">
                                        </div>
                                        <h5>Hospital Services</h5>
                                        <p>Our compehn Online Marketing strate will bost your website an hence monthly sales.</p>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                       <%-- <div class="col-lg-6 col-12 wow fadeInUp" data-wow-delay="0.6s">
                            <div class="service-item style-3">
                                <div class="service-inner">
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/06.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <div class="sc-shape">
                                            <img src="assets/images/service/home-7/icon/shape.png" alt="sc-shape">
                                        </div>
                                        <div class="service-icon">
                                            <img src="assets/images/service/home-7/icon/03.png" alt="servoce-icon">
                                        </div>
                                        <h5>Ambulance Services</h5>
                                        <p>Our compehn Online Marketing strate will bost your website an hence monthly sales.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12 wow fadeInUp" data-wow-delay="0.7s">
                            <div class="service-item style-3">
                                <div class="service-inner">
                                    <div class="service-thumb">
                                        <img src="assets/images/service/home-7/07.jpg" alt="service">
                                    </div>
                                    <div class="service-content">
                                        <div class="sc-shape">
                                            <img src="assets/images/service/home-7/icon/shape.png" alt="sc-shape">
                                        </div>
                                        <div class="service-icon">
                                            <img src="assets/images/service/home-7/icon/04.png" alt="servoce-icon">
                                        </div>
                                        <h5>Children Services</h5>
                                        <p>Our compehn Online Marketing strate will bost your website an hence monthly sales.</p>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        
                    </div>
                   
                </div>
              
            </div>
            
        </section>
        <!-- service section ending here -->

        <!-- helps video section start here -->
        <section class="help-video bg_img padding-tb" style="background-image: url(assets/css/bg-image/bg-5.jpg);">
              <!-- Shop Page Section start here -->		            
        <div class="shop-single padding-tb">
        <h2 class="text-center text-white">OUR GALLERY</h2>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-12 sticky-widget">
                        <div class="product-details">
                        
                            <div class="row">
                                <div class="col-md-12 col-12">
                                    <div class="product-thumb">

                                        <%--<div class="swiper-container pro-single-top">
                                            <div class="swiper-wrapper">
                                                
                                                
                                                <div class="swiper-slide">
                                                 
                                                    <div class="single-thumb"><img src="../hosimg/<%#Eval("iname") %>" alt="shop"></div>
                                                </div>
                                            </div>
                                        </div>--%>
                                        <div class="swiper-container pro-single-thumbs">
                                            <div class="swiper-wrapper">
                                       
                                        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                                        <ItemTemplate>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="../hosimg/<%#Eval("iname") %>" alt="shop"></div>
                                                </div>
                                               </ItemTemplate>
                                                </asp:ListView>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [hosimg]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                       
                                        <div class="pro-single-prev"><i class="icofont-rounded-left"></i></div>
                                        <div class="pro-single-next"><i class="icofont-rounded-right"></i></div>
                                        
                                    </div>
                                </div>
                               
                            </div>
                             
                              
                        </div>
                       
                    </div>

                   
                </div>
            </div>
        </div>
        <!-- Shop Page Section ending here -->
		

        </section>
        <!-- helps video section ending here -->

        <!-- help countey section start here -->
        <section class="help-country padding-tb bg-f9">
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <h4><span>Health We Care About</span></h4>
                    <h2>Save People From Coronavirus</h2>
                </div>
                <div class="section-wrapper">
                    <div class="row justify-content-center">

                    <div class="col-lg-6 col-12">
                            <div class="hc-right">
                            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <div class="hc-item wow fadeInUp" data-wow-delay="0.5s">
                                   <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="../Lab_events/<%#Eval("img") %>" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p> <%#Eval("ename") %></p>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                </ItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Event_mstr]"></asp:SqlDataSource>
                              <%--  <div class="hc-item wow fadeInUp" data-wow-delay="0.6s">
                                    <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="assets/images/helps/03.jpg" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p>Project In: <a href="#">CHINA</a>, <a href="#">WUHAN</a></p>
                                            <a href="#"><h6>Wuhan People Has Died From Coronavirus</h6></a>
                                            <p class="desc">$60,000 <span>Donation Needed</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="hc-item wow fadeInUp" data-wow-delay="0.7s">
                                    <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="assets/images/helps/04.jpg" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p>Project In: <a href="#">CHINA</a>, <a href="#">WUHAN</a></p>
                                            <a href="#"><h6>Wuhan People Has Died From Coronavirus</h6></a>
                                            <p class="desc">$60,000 <span>Donation Needed</span></p>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                        
                     <%--   <div class="col-lg-6 col-12">
                            <div class="hc-right">
                                <div class="hc-item wow fadeInUp" data-wow-delay="0.5s">
                                   <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="assets/images/helps/03.jpg" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p>Project In: <a href="#">CHINA</a>, <a href="#">WUHAN</a></p>
                                            <a href="#"><h6>Wuhan People Has Died From Coronavirus</h6></a>
                                            <p class="desc">$60,000 <span>Donation Needed</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="hc-item wow fadeInUp" data-wow-delay="0.6s">
                                    <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="assets/images/helps/03.jpg" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p>Project In: <a href="#">CHINA</a>, <a href="#">WUHAN</a></p>
                                            <a href="#"><h6>Wuhan People Has Died From Coronavirus</h6></a>
                                            <p class="desc">$60,000 <span>Donation Needed</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="hc-item wow fadeInUp" data-wow-delay="0.7s">
                                    <div class="hc-inner">
                                        <div class="shape-image">
                                            <img src="assets/images/project/shape.png" alt="project-shape">
                                        </div>
                                        <div class="hc-thumb">
                                            <img src="assets/images/helps/04.jpg" alt="helps-country">
                                        </div>
                                        <div class="hc-content">
                                            <p>Project In: <a href="#">CHINA</a>, <a href="#">WUHAN</a></p>
                                            <a href="#"><h6>Wuhan People Has Died From Coronavirus</h6></a>
                                            <p class="desc">$60,000 <span>Donation Needed</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>
        <!-- help countey section ending here -->
        
		<%--<!-- Project Section Start Here -->
		<section class="project-section bg_img padding-tb" style="background-image: url(assets/css/bg-image/bg-5.jpg);">
            <div class="container">
				<div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <h4><span>Key Operations</span></h4>
                    <h2>Coronavirus is Affecting 199 Countries</h2>
                </div>
                <div class="section-wrapper">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-sm-6 col-12  wow fadeInUp" data-wow-delay="0.4s">
                            <div class="post-item">
                                <div class="post-item-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="post-thumb">
                                        <a href="#"><img src="assets/images/project/01.jpg" alt="lab-project"></a>
                                    </div>
                                    <div class="post-content">
                                        <h5><a href="#">Coronavirus Chinese Officials As Death Toll</a></h5>
                                        <div class="author-date">
                                            <a href="#" class="date"><i class="icofont-clock-time"></i>09 Days Lift</a>
                                            <a href="#" class="location"><i class="icofont-google-map"></i>Bangladesh</a>
                                        </div>
                                        <p>Thousands info teenageris across the and in an experiment designed to see.</p>
                                        <a href="#" class="lab-btn style-2"><span>read more</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12  wow fadeInUp" data-wow-delay="0.5s">
                            <div class="post-item">
                                <div class="post-item-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="post-thumb">
                                        <a href="#"><img src="assets/images/project/02.jpg" alt="lab-project"></a>
                                    </div>
                                    <div class="post-content">
                                        <h5><a href="#">Coronavirus Chinese Officials As Death Toll</a></h5>
                                        <div class="author-date">
                                            <a href="#" class="date"><i class="icofont-clock-time"></i>09 Days Lift</a>
                                            <a href="#" class="location"><i class="icofont-google-map"></i>Bangladesh</a>
                                        </div>
                                        <p>Thousands info teenageris across the and in an experiment designed to see.</p>
                                        <a href="#" class="lab-btn style-2"><span>read more</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12  wow fadeInUp" data-wow-delay="0.6s">
                            <div class="post-item">
                                <div class="post-item-inner">
                                    <div class="shape-image">
                                        <img src="assets/images/project/shape.png" alt="project-shape">
                                    </div>
                                    <div class="post-thumb">
                                        <a href="#"><img src="assets/images/project/03.jpg" alt="lab-project"></a>
                                    </div>
                                    <div class="post-content">
                                        <h5><a href="#">Coronavirus Chinese Officials As Death Toll</a></h5>
                                        <div class="author-date">
                                            <a href="#" class="date"><i class="icofont-clock-time"></i>09 Days Lift</a>
                                            <a href="#" class="location"><i class="icofont-google-map"></i>Bangladesh</a>
                                        </div>
                                        <p>Thousands info teenageris across the and in an experiment designed to see.</p>
                                        <a href="#" class="lab-btn style-2"><span>read more</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Project Section Ending Here -->--%>
        
        <%--<!-- Shop Page Section start here -->		            
        <section class="shop-page bg-f9 padding-tb">
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <h4><span>Recent Products</span></h4>
                    <h2>Our Best Antivirus Products</h2>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 sticky-widget">
                        <div class="shop-product-wrap grid row justify-content-center">
                            <div class="col-lg-3 col-md-6 col-12  wow fadeInUp" data-wow-delay="0.4s">
                                <div class="product-item">
                                    <div class="product-thumb">
                                        <div class="pro-thumb">
                                            <img src="assets/images/shop/01.jpg" alt="shop">
                                        </div>
                                        <div class="product-action-link">
                                            <a class="view-modal" data-target="#quick_view"><i class="icofont-eye"></i></a>
                                            <a href="#"><i class="icofont-heart"></i></a>
                                            <a href="#"><i class="icofont-cart-alt"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h5><a href="#">Hands Wash Product</a></h5>
                                        <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></p>
                                        <h6>$200</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12  wow fadeInUp" data-wow-delay="0.5s">
                                <div class="product-item">
                                    <div class="product-thumb">
                                        <div class="pro-thumb">
                                            <img src="assets/images/shop/02.jpg" alt="shop">
                                        </div>
                                        <div class="product-action-link">
                                            <a class="view-modal" data-target="#quick_view"><i class="icofont-eye"></i></a>
                                            <a href="#"><i class="icofont-heart"></i></a>
                                            <a href="#"><i class="icofont-cart-alt"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h5><a href="#">Hands Wash Product</a></h5>
                                        <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></p>
                                        <h6>$200</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12  wow fadeInUp" data-wow-delay="0.6s">
                                <div class="product-item">
                                    <div class="product-thumb">
                                        <div class="pro-thumb">
                                            <img src="assets/images/shop/03.jpg" alt="shop">
                                        </div>
                                        <div class="product-action-link">
                                            <a class="view-modal" data-target="#quick_view"><i class="icofont-eye"></i></a>
                                            <a href="#"><i class="icofont-heart"></i></a>
                                            <a href="#"><i class="icofont-cart-alt"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h5><a href="#">Hands Wash Product</a></h5>
                                        <p>
                                            <i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i>
                                        </p>
                                        <h6>$200</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12  wow fadeInUp" data-wow-delay="0.7s">
                                <div class="product-item">
                                    <div class="product-thumb">
                                        <div class="pro-thumb">
                                            <img src="assets/images/shop/04.jpg" alt="shop">
                                        </div>
                                        <div class="product-action-link">
                                            <a class="view-modal" data-target="#quick_view"><i class="icofont-eye"></i></a>
                                            <a href="#"><i class="icofont-heart"></i></a>
                                            <a href="#"><i class="icofont-cart-alt"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h5><a href="#">Hands Wash Product</a></h5>
                                        <p>
                                            <i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i>
                                        </p>
                                        <h6>$200</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal" id="quick_view">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <button type="button" class="close" data-dismiss="modal"><i class="icofont-close"></i></button>
                            <div class="modal-body">
                                <div class="product-details-inner">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-12">
                                            <div class="thumb text-center">
                                                <div class="pro-thumb">
                                                    <img src="assets/images/shop/09.jpg" alt="shop">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="product-content">
                                                <h5><a href="#">Hands Wash Product</a></h5>
                                                <p>
                                                    <i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i>
                                                </p>
                                                <h6>$200</h6>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
                                            </div>
                                            <div class="cart-button">
                                                <div class="cart-plus-minus">
                                                    <div class="dec qtybutton">-</div>
                                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">
                                                    <div class="inc qtybutton">+</div>
                                                </div>
                                                <a href="#" class="lab-btn"><span>Add to Cart</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shop Page Section ending here -->--%>

       <%-- <!-- Blog Section Start Here -->
		<section class="blog-section home-7 bg_img padding-tb" style="background-image: url(assets/css/bg-image/bg-5.jpg);">
			<div class="container">
				<div class="section-header wow fadeInUp" data-wow-delay="0.3s">
					<h4><span>Our Most Popular Blog</span></h4>
					<h2>More Articles From Resource Library</h2>
				</div>
				<div class="section-wrapper">
					<div class="row justify-content-center">
						<div class="col-lg-6 col-12 wow fadeInUp" data-wow-delay="0.4s">
							<div class="left">
								<div class="post-item">
									<div class="post-item-inner">
										<div class="post-thumb">
											<a href="blog-single.html">
												<img src="assets/images/blog/home-7/01.jpg" alt="lab-blog">
											</a>
										</div>
										<div class="post-content">
											<h4><a href="blog-single.html">How Digital Signage Can Help Flatten The...</a></h4>
											<div class="entry-meta">
												<a href="#" class="date">March 16, 2020</a>
											</div>
											<p>Drama enable wordwide action team where Motin Was Proced Aramin Raher Convene Cuvasg Qrama enabe wordwd acton team.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="right">
								<div class="post-item wow fadeInUp" data-wow-delay="0.5s">
									<div class="post-item-inner">
										<div class="post-thumb">
											<a href="blog-single.html"><img src="assets/images/blog/home-7/02.jpg" alt="lab-blog"></a>
										</div>
										<div class="post-content">
											<h6><a href="blog-single.html">You Need A SEO Agency...</a></h6>
											<div class="entry-meta">
												<a href="#" class="date">March 16, 2020</a>
											</div>
										</div>
									</div>
								</div>
								<div class="post-item wow fadeInUp" data-wow-delay="0.6s">
									<div class="post-item-inner">
										<div class="post-thumb">
											<a href="blog-single.html"><img src="assets/images/blog/home-7/03.jpg" alt="lab-blog"></a>
										</div>
										<div class="post-content">
											<h6><a href="blog-single.html">Image Optimization For...</a></h6>
											<div class="entry-meta">
												<a href="#" class="date">March 16, 2020</a>
											</div>
										</div>
									</div>
								</div>
								<div class="post-item wow fadeInUp" data-wow-delay="0.7s">
									<div class="post-item-inner">
										<div class="post-thumb">
											<a href="blog-single.html"><img src="assets/images/blog/home-7/04.jpg" alt="lab-blog"></a>
										</div>
										<div class="post-content">
											<h6><a href="blog-single.html">How Grammar Impact...</a></h6>
											<div class="entry-meta">
												<a href="#" class="date">March 16, 2020</a>
											</div>
										</div>
									</div>
								</div>
								<div class="post-item wow fadeInUp" data-wow-delay="0.8s">
									<div class="post-item-inner">
										<div class="post-thumb">
											<a href="blog-single.html"><img src="assets/images/blog/home-7/05.jpg" alt="lab-blog"></a>
										</div>
										<div class="post-content">
											<h6><a href="blog-single.html">SEO Tips To Boost Your...</a></h6>
											<div class="entry-meta">
												<a href="#" class="date">March 16, 2020</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- Blog Section Ending Here -->

        <!-- faq section start here -->
        <section class="faq-section home-7 bg-f9 padding-tb">
            <div class="container">
                <div class="section-header wow fadeInUp" data-wow-delay="0.3s">
                    <h4><span>FAQ Of The Coronavirus-</span></h4>
                    <h2>Frequently Asked Questions</h2>
                </div>
                <div class="section-wrapper">
                    <ul class="tab-lists lab-ul nav justify-content-center wow fadeInUp" data-wow-delay="0.4s" id="myTab" role="tablist">
                        <li class="nav-item tab-list">
                            <a class="active" id="general-tab" data-toggle="tab" href="#general" role="tab" aria-controls="general" aria-selected="true">General</a>
                        </li>
                        <li class="nav-item tab-list">
                            <a id="symptoms-tab" data-toggle="tab" href="#symptoms" role="tab" aria-controls="symptoms" aria-selected="false">Symptoms</a>
                        </li>
                        <li class="nav-item tab-list">
                            <a id="medical-tab" data-toggle="tab" href="#medical" role="tab" aria-controls="medical" aria-selected="false">Medical</a>
                        </li>
                        <li class="nav-item tab-list">
                            <a id="protection-tab" data-toggle="tab" href="#protection" role="tab" aria-controls="protection" aria-selected="false">Protection</a>
                        </li>
                        <li class="nav-item tab-list">
                            <a id="travel-tab" data-toggle="tab" href="#travel" role="tab" aria-controls="travel" aria-selected="false">Travel</a>
                        </li>
                    </ul>
                    <div class="tab-content faq-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.4s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What are the objectives of this Website?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What is the best features and services we deiver?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Why this Prevention important to me?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>how may I take part in and purchase this?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What kinds of security policy do you maintain?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.5s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Get things done with this beautiful app?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Starting with Aviki is easier than anything?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>20k+ Customers Love Aviki App?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Whatever Work You Do You Can Do It In Aviki?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Download our guide manage your daily works?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="symptoms" role="tabpanel" aria-labelledby="symptoms-tab">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.4s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What is the best features and services we deiver?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Why this Prevention important to me?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>how may I take part in and purchase this?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What kinds of security policy do you maintain?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.5s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Starting with Aviki is easier than anything?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>20k+ Customers Love Aviki App?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Whatever Work You Do You Can Do It In Aviki?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Download our guide manage your daily works?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="medical" role="tabpanel" aria-labelledby="medical-tab">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.4s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Why this Prevention important to me?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>how may I take part in and purchase this?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What kinds of security policy do you maintain?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.5s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>20k+ Customers Love Aviki App?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Whatever Work You Do You Can Do It In Aviki?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Download our guide manage your daily works?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="protection" role="tabpanel" aria-labelledby="protection-tab">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.4s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What are the objectives of this Website?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What is the best features and services we deiver?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Why this Prevention important to me?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>how may I take part in and purchase this?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What kinds of security policy do you maintain?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.5s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Get things done with this beautiful app?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Starting with Aviki is easier than anything?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>20k+ Customers Love Aviki App?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Whatever Work You Do You Can Do It In Aviki?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Download our guide manage your daily works?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="travel" role="tabpanel" aria-labelledby="travel-tab">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.4s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What is the best features and services we deiver?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Why this Prevention important to me?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>how may I take part in and purchase this?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>What kinds of security policy do you maintain?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-sm-8 col-12 wow fadeInUp" data-wow-delay="0.5s">
                                    <ul class="accordion lab-ul">
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Starting with Aviki is easier than anything?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>20k+ Customers Love Aviki App?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Whatever Work You Do You Can Do It In Aviki?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                        <li class="accordion-item">
                                            <div class="accordion-list">
                                                <div class="left">
                                                    <div class="icon"><i class="icofont-info"></i></div>
                                                </div>
                                                <div class="right">
                                                    <h6>Download our guide manage your daily works?</h6>
                                                </div>
                                            </div>
                                            <div class="accordion-answer">
                                                <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore vertatis et quasi archtecto beatae vitae dicta sunt explicab Nemo enim ipsam voluptatem quia voluptas.</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- faq section ending here -->
--%>
        </form>
</asp:Content>

