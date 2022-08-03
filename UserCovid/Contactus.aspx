<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Contact Section Start Here -->
        <section class="contact-us padding-tb pb-0">
            <div class="container">
                <div class="contact-wrap">
                    <div class="row">
                        <div class="col-lg-12 col-md-4 col-12 ">
                        	<div class="contact-title">
                        		<h5>Contact Informations</h5>
                        	</div>
                            <ul class="contact-area lab-ul">
                                <li class="contact-item">
                                    <div class="contact-icon ">
                                      <img src="assets/images/contact/icon/01.png" alt="contact">
                                    </div>
                                    <div class="content">
                                        <h6>Our Location</h6>
                                        <p>C B Patel Computer College <br>સી બી પટેલ કમ્પ્યુટર કોલેજ</p>
                                    </div>
                                </li>
                                <li class="contact-item">
                                    <div class="contact-icon">
                                        <img src="assets/images/contact/icon/02.png" alt="contact">
                                    </div>
                                    <div class="content">
                                        <h6>Phone Number</h6>
                                        <p>01923-974532, 41566-560993 <br> +2156892369</p>
                                    </div>
                                </li>
                                <li class="contact-item">
                                    <div class="contact-icon">
                                        <img src="assets/images/contact/icon/03.png" alt="contact">
                                    </div>
                                    <div class="content">
                                        <h6>Email Address</h6>
                                        <p>publichealthcare2000@gmail.com.com</p>
                                    </div>
                                </li>
                                <li class="contact-item">
                                    <div class="contact-icon">
                                        <img src="assets/images/contact/icon/04.png" alt="contact">
                                    </div>
                                    <div class="content">
                                        <h6>Website Address:</h6>
                                        <p>http://www.publichealthcare.com</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                      <%--  <div class="col-lg-8 col-md-6 col-xs-12">
                        	<div class="contact-title">
                        		<h5>Send us a Massage</h5>
                        	</div>
                            <form class="contact-form" action="http://demos.codexcoder.com/labartisan/html/covid-19/contact.php" method="POST">
                                <input type="text" name="name" placeholder="Your Name" class="contact-input">
                                <input type="email" name="email" placeholder="Your Email" class="contact-input">
                                <input type="text" name="text" placeholder="Your Address" class="contact-input">
                                <input type="text" name="text" placeholder="Your Company" class="contact-input">
                                <textarea rows="5" class="contact-input" placeholder="Your Messages"></textarea>
                                <input type="submit" name="submit" value="Send Message" class="lab-btn">
                            </form>
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact Section Ending Here -->

        <!-- G-Map Section Start Here -->
        <div class="gmaps-section">
            <div class="map-area">

            <%--<iframe src="" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>--%>

				<iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.011392952883!2d72.7968723146508!3d21.151944885931837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04dff37ee2f05%3A0x2ed617f17458fa81!2sC%20B%20Patel%20Computer%20College!5e0!3m2!1sen!2sin!4v1622721121307!5m2!1sen!2sin" width="600" allow="accelerometer;" allowfullscreen style="border:0"></iframe>
            </div>
        </div>
        <!-- G-Map Section Ending Here -->


</asp:Content>

