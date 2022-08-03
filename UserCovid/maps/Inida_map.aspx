<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inida_map.aspx.cs" Inherits="UserCovid_maps_Inida_map" %>

<!doctype html>
<html lang="en">


<!-- Mirrored from demo.riktheme.com/cotrak-th/new-theme/map-india.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 10 Apr 2021 16:38:59 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Required meta tags -->

    <title> INDIA MAP</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.png">

    <!-- Plugins css -->
    <link rel="stylesheet" href="js/default-assets/vector-map/jquery-jvectormap-2.0.2.css">

    <!-- Master Stylesheet CSS -->
    <link rel="stylesheet" href="style.css">


    <script src="../../cdn-cgi/apps/head/OkbNSnEV_PNHTKP2_EYPrFNyZ8Q.js"></script><link href="css/bootstrap.css" rel="stylesheet">

<link href="css/startup.css" rel="stylesheet">

<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
<![endif]-->

<link rel="shortcut icon" href="images/favicon.html">
<script src="js/pace.js"></script>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,600" rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="../assets/css/icofont.min.css">
		<link rel="stylesheet" href="../assets/css/lightcase.css">
		<link rel="stylesheet" href="../assets/css/swiper.min.css">
		<link rel="stylesheet" href="../assets/css/style.css">


</head>

<body>
    <!-- Preloader -->
    <div class="loading-area">
        <div class="loading-box"></div>
        <div class="loading-pic">
            <div class="loader-animation-outer">
                <div class="rotate-center">
                    <div class="scale-up-center">
                        <img src="img/core-img/corona.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader -->

    <!-- Mobile Menu Start Here -->
		<div class="mobile-menu">
			<nav class="mobile-header">
				<div class="header-logo">
					<a href="index.html"><img src="../assets/images/logo/04.png" alt="logo"></a>
				</div>
				<div class="header-bar">
					<span></span>
					<span></span>
					<span></span>
				</div>
			</nav>
			<nav class="mobile-menu">
				<div class="mobile-menu-area">
					<div class="mobile-menu-area-inner">
						<ul class="lab-ul">
                            <li class="active"><a href="#">Home</a>
                                <ul class="lab-ul">
                                    <li><a href="index.html">Home Style One</a></li>
                                    <li><a href="index-2.html">Home Style Two</a></li>
                                    <li><a href="index-3.html">Home Style Three</a></li>
                                    <li><a href="index-4.html">Home Style Four <sup>New</sup></a></li>
                                    <li><a href="index-5.html">Home Style Five <sup>New</sup></a></li>
                                    <li><a href="index-6.html">Home Style Six <sup>New</sup></a></li>
                                    <li class="active"><a href="index-7.html">Home Style Seven <sup>New</sup></a></li>
                                    <li><a href="one-page.html">One Page</a></li>
                                    <li><a href="index-box.html">Box Layout</a></li>
                                    <li><a href="http://demos.codexcoder.com/labartisan/html/covid-19-rtl/index.html">Rtl Layout</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Vaccine </a>
                                <ul class="lab-ul">
                                    <li><a href="#0">About Vaccine</a>
                                        <ul class="lab-ul">
                                            <li><a href="../Vaccineinfo.aspx">Vaccine Info</a></li>
                                            <li><a href="about-2.html">About Style 2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="faq.html">Faq</a></li>
                                    <li><a href="outbreak.html">Outbreak</a></li>
                                    <li><a href="coming-soon.html">ComingSoon</a></li>
                                    <li><a href="Bedinfo.aspx">BedInfo</a></li>
                                </ul>
                            </li>
                            <li><a href="">Login</a></li>
                            <li><a href="User_register.aspx">Sign Up</a></li>
                                <li><a href="Ulogin.aspx">Sign In</a>
                            </li>
                            <li><a href="#0">Shop</a>
                                <ul class="lab-ul">
                                    <li><a href="shop-page.html">Products Page</a></li>
                                    <li><a href="shop-single.html">Product Single</a></li>
                                    <li><a href="cart-page.html">Cart Page</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
					</div>
				</div>
			</nav>
		</div>
		<!-- Mobile Menu Ending Here -->

		<!-- desktop menu start here -->
		<header class="header-section home-7">
			<div class="header-area">
				<div class="container">
					<div class="primary-menu">
						<div class="logo">
							<a href="index.html"><img src="../assets/images/logo/01.png" alt="logo"></a>
                        </div>
						<div class="main-area">
							<div class="main-menu">
								<ul class="lab-ul">
                                    <li class="active"><a href="#">Home</a>
                                        <ul class="lab-ul">
                                            <li><a href="index.html">Home Style One</a></li>
                                            <li><a href="index-2.html">Home Style Two</a></li>
                                            <li><a href="index-3.html">Home Style Three</a></li>
                                            <li><a href="index-4.html">Home Style Four <sup>New</sup></a></li>
                                            <li><a href="index-5.html">Home Style Five <sup>New</sup></a></li>
                                            <li><a href="index-6.html">Home Style Six <sup>New</sup></a></li>
                                            <li class="active"><a href="index-7.html">Home Style Seven <sup>New</sup></a></li>
                                            <li><a href="one-page.html">One Page</a></li>
                                            <li><a href="index-box.html">Box Layout</a></li>
                                            <li><a href="http://demos.codexcoder.com/labartisan/html/covid-19-rtl/index.html">Rtl Layout</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Vaccine</a>
                                        <ul class="lab-ul">
                                            <li><a href="#0">About Vaccine</a>
                                                <ul class="lab-ul">
                                                    <li><a href="../Vaccineinfo.aspx">Vaccine Centre</a></li>
                                                    <li><a href="about-2.html">About Style 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="faq.html">Faq</a></li>
                                            <li><a href="outbreak.html">Outbreak</a></li>
                                            <li><a href="Feedback.aspx">FeedBack</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="service.html">Prevention</a></li>
                                    <li><a href="#">Blog</a>
                                        <ul class="lab-ul">
                                            <li><a href="../dummycerti.aspx">View Certificate</a></li>
                                            <li><a href="../dummyinvoice.aspx">View Invoice</a></li>
                                            <li><a href="blog-3.html">Blog Style 3</a></li>
                                            <li><a href="blog-single.html">Blog Single</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#0">Shop</a>
                                        <ul class="lab-ul">
                                            <li><a href="shop-page.html">Products Page</a></li>
                                            <li><a href="shop-single.html">Product Single</a></li>
                                            <li><a href="cart-page.html">Cart Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
							</div>
							<div class="header-btn">
								<a href="#" class="lab-btn"><span>Donate<i class="icofont-heart"></i></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- desktop menu ending here -->
        <!-- Main Content Area -->
        <div class="main-page-content">
            <!-- Vector Map area Start -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="card box-margin">
                            <div class="card-body">
                                <div class="country-map">
                                    <div class="box-header">
                                        <h5 class="card-title">India</h5>
                                    </div>

                                    <div class="map--body">
                                        <div id="india" class="height-500"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Category -->
                    <div class="col-lg-5">
                        <div class="card box-margin">
                            <div class="card-body pb-0">
                                <div class="row">
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="row">
                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/1.png" alt=""></div>
                                                            <h5 class="font-14">Total Cases</h5>
                                                            <h3 class="mb-0">5,2356</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-danger">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/2.png" alt=""></div>
                                                            <h5 class="font-14">Total Death</h5>
                                                            <h3 class="mb-0">1,254</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-success">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/4.png" alt=""></div>
                                                            <h5 class="font-14">Recover</h5>
                                                            <h3 class="mb-0">1,2723</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/icon-img/28.png" alt=""></div>
                                                            <h5 class="font-14">Critical</h5>
                                                            <h3 class="mb-0">767</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="row">
                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/1.png" alt=""></div>
                                                            <h5 class="font-14">Today Cases</h5>
                                                            <h3 class="mb-0">578</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/29.png" alt=""></div>
                                                            <h5 class="font-14">Today Deaths</h5>
                                                            <h3 class="mb-0">70</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/30.png" alt=""></div>
                                                            <h5 class="font-14">Active</h5>
                                                            <h3 class="mb-0">1,254</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Single Widget -->
                                            <div class="col-sm-12 col-md-6 col-lg-12">
                                                <div class="single-widger-cart mb-30">
                                                    <div class="card bg-info">
                                                        <div class="card-body">
                                                            <div class="float-right card-thumb- "><img src="img/bg-img/3.png" alt=""></div>
                                                            <h5 class="font-14">Helpline</h5>
                                                            <h3 class="mb-0">786</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ======================================
    ********* Page Wrapper Area End ***********
    ======================================= -->

    <!-- Plugins js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.html"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bundle.js"></script>
    <script src="js/default-assets/setting.js"></script>
    <script src="js/default-assets/date-time.js"></script>

    <!-- Active JS -->
    <script src="js/default-assets/active.js"></script>
    <script src="js/script.js"></script>

    <!-- Inject JS -->
    <script src="js/default-assets/vector-map/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/default-assets/vector-map/jquery-jvectormap-in-mill.js"></script>
    <script src="js/default-assets/vector-map/vector-map-va-in.js"></script>
    <script src="js/default-assets/vector-map/jvectormap.custom-india.js"></script>

</body>


<!-- Mirrored from demo.riktheme.com/cotrak-th/new-theme/map-india.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 10 Apr 2021 16:39:00 GMT -->
</html>