<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
   <h2 class="display-4 text-danger text-center">OUR TEAM</h2>
   <br />   
    <!-- Shop Page Section start here -->		            
        <form id="Form1" runat="server">
        <div class="shop-single padding-tb">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-9 col-12 sticky-widget">
                        <div class="product-details">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="product-thumb">
                                        <div class="swiper-container pro-single-top">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                       <ItemTemplate>
                                                 
                        
                                        
                                                    <div class="single-thumb">   <img src="../aimages/<%#Eval("aimg")%>"   alt="user image" width="300" height="300" />
                                        <h4>Your Name : <%#Eval("name") %></h4>
                                       </div>
                                       <br/>                                                                                          
                                       <br/>
                                       <div class="post-content">
                                       <strong> <h5>Your Email : <%#Eval("email") %></h5></strong>
                                        <br />                                       
                                       <br />
                                       </div>
                                       <br/></div>
                                                     
                                       </div>
                                      
                        
                                                </div>
                                               <%-- <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/02.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/03.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/04.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/05.jpg" alt="shop"></div>
                                                </div>--%>
                                            </div>
                                        </div>
                                        <%--<div class="swiper-container pro-single-thumbs">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/01.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/02.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/03.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/04.jpg" alt="shop"></div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="single-thumb"><img src="assets/images/shop/05.jpg" alt="shop"></div>
                                                </div>
                                            </div>
                                        </div>
                                        --%>
                                    <%--    <div class="pro-single-next"><i class="icofont-rounded-left"></i></div>
                                        <div class="pro-single-prev"><i class="icofont-rounded-right"></i></div>--%>
                                    </div>
                                </div>
                                <div class="col-md-7  offset-1 col-12">
                                    <div class="post-content">
                        
                        </ItemTemplate>             
                        </asp:Repeater>     
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Admin_Register] ORDER BY [name]">
                                                    </asp:SqlDataSource>
<%--                         <div class="review">
                            <ul class="review-nav lab-ul">
                                <li class="desc" data-target="description-show">Description</li>
                                <li class="rev active" data-target="review-content-show">Reviews 4</li>
                                 </ul>
                                </div>           --%>
                                    <asp:Button ID="btn_go" runat="server" Text="Go Back"  class="lab-btn" onclick="btn_go_Click"/>
                                            <%--<button type="submit" class="lab-btn"><span>Add To Cart</span></button>--%>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                                                 
                                                     </form>
                       
                           
                          <%--  <div class="review-content review-content-show">
                                <div class="review-showing">
                                    <ul class="content lab-ul">
                                        <li>
                                            <div class="post-thumb">
                                                <img src="assets/images/team/01.jpg" alt="shop">
                                            </div>
                                            <div class="post-content">
                                                <div class="entry-meta">
                                                    <div class="posted-on">
                                                        <a href="#">Britney Doe</a>
                                                        <p>Posted on December 25, 2017 at 6:57 am</p>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                    </div>
                                                </div>
                                                <div class="entry-content">
                                                    <p>Enthusiast build innovativ initiatives before lonterm high-impact awesome theme seo psd porta monetize covalent leadership after without resource.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <img src="assets/images/team/02.jpg" alt="shop">
                                            </div>
                                            <div class="post-content">
                                                <div class="entry-meta">
                                                    <div class="posted-on">
                                                        <a href="#">Jonathan Doe</a>
                                                        <p>Posted on December 25, 2017 at 6:57 am</p>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                    </div>
                                                </div>
                                                <div class="entry-content">
                                                    <p>Enthusiast build innovativ initiatives before lonterm high-impact awesome theme seo psd porta monetize covalent leadership after without resource.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <img src="assets/images/team/03.jpg" alt="shop">
                                            </div>
                                            <div class="post-content">
                                                <div class="entry-meta">
                                                    <div class="posted-on">
                                                        <a href="#">Mack Zucky</a>
                                                        <p>Posted on December 25, 2017 at 6:57 am</p>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                    </div>
                                                </div>
                                                <div class="entry-content">
                                                    <p>Enthusiast build innovativ initiatives before lonterm high-impact awesome theme seo psd porta monetize covalent leadership after without resource.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <img src="assets/images/team/01.jpg" alt="shop">
                                            </div>
                                            <div class="post-content">
                                                <div class="entry-meta">
                                                    <div class="posted-on">
                                                        <a href="#">Jordi Albae</a>
                                                        <p>Posted on December 25, 2017 at 6:57 am</p>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                        <i class="icofont-star"></i>
                                                    </div>
                                                </div>
                                                <div class="entry-content">
                                                    <p>Enthusiast build innovativ initiatives before lonterm high-impact awesome theme seo psd porta monetize covalent leadership after without resource.</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="client-review">
                                        <div class="review-form">
                                            <div class="review-title">
                                                <h5>Add a Review</h5>
                                            </div>
                                            <form action="http://demos.codexcoder.com/labartisan/html/covid-19/action" class="row">
                                                <div class="col-md-4 col-12">
                                                    <input type="text" name="name" placeholder="Full Name">
                                                </div>
                                                <div class="col-md-4 col-12">
                                                    <input type="text" name="email" placeholder="Email Adress">
                                                </div>
                                                <div class="col-md-4 col-12">
                                                    <div class="rating">
                                                        <span class="rating-title">Your Rating : </span>
                                                        <ul class="codex">
                                                            <li>
                                                                <i class="icofont-star"></i>
                                                            </li>
                                                            <li>
                                                                <i class="icofont-star"></i>
                                                            </li>
                                                            <li>
                                                                <i class="icofont-star"></i>
                                                            </li>
                                                            <li>
                                                                <i class="icofont-star"></i>
                                                            </li>
                                                            <li>
                                                                <i class="icofont-star"></i>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-12">
                                                    <textarea rows="5" placeholder="Type Here Message"></textarea>
                                                </div>
                                                <div class="col-12">
                                                    <button class="defult-btn" type="submit">Submit Review</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="description">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    <div class="post-item">
                                        <div class="post-thumb">
                                            <img src="assets/images/shop/01.jpg" alt="shop">
                                        </div>
                                        <div class="post-content">
                                            <ul class="codex">
                                                <li>
                                                    Donec non est at libero vulputate rutrum.
                                                </li>
                                                <li>
                                                    Morbi ornare lectus quis justo gravida semper.
                                                </li>
                                                <li>
                                                    Pellentesque aliquet, sem eget laoreet ultrices.
                                                </li>
                                                <li>
                                                    Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.
                                                </li>
                                                <li>
                                                    Donec a neque libero.
                                                </li>
                                                <li>
                                                    Pellentesque aliquet, sem eget laoreet ultrices.
                                                </li>
                                                <li>
                                                    Morbi ornare lectus quis justo gravida semper..
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-7 col-12">
                        <aside>
                            <div class="widget widget-search">
                                <form action="http://demos.codexcoder.com/" class="search-wrapper">
                                    <input type="text" name="s" placeholder="Search...">
                                    <button type="submit"><i class="icofont-search-2"></i></button>
                                </form>
                            </div>

                            <div class="widget shop-widget">
                                <div class="widget-header">
                                    <h5>All Categories</h5>
                                </div>
                                <div class="widget-wrapper">
                                    <ul class="shop-menu codex">
                                        <li>
                                            <a href="#">Code Optimization</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a>
                                                    <ul class="shop-submenu codex">
                                                        <li><a href="#">All Products</a></li>
                                                        <li><a href="#">Seo</a></li>
                                                        <li><a href="#">Marketing</a></li>
                                                        <li><a href="#">Email Marketing</a></li>
                                                        <li><a href="#">Seo Support</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Monitoring Ranking</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Target Strategy</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Nap Syndication</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">SEO Support</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Email Marketing</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Engine Marketing</a>
                                            <ul class="shop-submenu codex">
                                                <li><a href="#">All Products</a></li>
                                                <li><a href="#">Seo</a></li>
                                                <li><a href="#">Marketing</a></li>
                                                <li><a href="#">Email Marketing</a></li>
                                                <li><a href="#">Seo Support</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>--%>

                         <%--   <div class="widget letest-product">
                                <div class="widget-header">
                                    <h5>Latests Products</h5>
                                </div>
                                <div class="widget-wrapper">
                                    <ul class="codex">
                                        <li>
                                            <div class="product-thumb">
                                                <img src="assets/images/shop/01.jpg" alt="shop">
                                            </div>
                                            <div class="product-content">
                                                <h6><a href="#">Product Title Here</a></h6>
                                                <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i> <span>(3 review)</span></p>
                                                <h6>$200</h6>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="product-thumb">
                                                <img src="assets/images/shop/02.jpg" alt="shop">
                                            </div>
                                            <div class="product-content">
                                                <h6><a href="#">Product Title Here</a></h6>
                                                <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i> <span>(3 review)</span></p>
                                                <h6>$200</h6>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="product-thumb">
                                                <img src="assets/images/shop/03.jpg" alt="shop">
                                            </div>
                                            <div class="product-content">
                                                <h6><a href="#">Product Title Here</a></h6>
                                                <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i> <span>(3 review)</span></p>
                                                <h6>$200</h6>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="product-thumb">
                                                <img src="assets/images/shop/04.jpg" alt="shop">
                                            </div>
                                            <div class="product-content">
                                                <h6><a href="#">Product Title Here</a></h6>
                                                <p><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i> <span>(3 review)</span></p>
                                                <h6>$200</h6>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                         --%>   </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Page Section ending here -->
</asp:Content>



