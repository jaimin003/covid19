﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PLogin.aspx.cs" Inherits="ExtraCovid_Login" %>




<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.web3canvas.com/themeforest/startupkit/index-v-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Apr 2021 13:09:20 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Startup Responsive Landing page Template for startup, web services, newsletter signup, lead generation etc..">
<title>User Login</title>

<script src="../../cdn-cgi/apps/head/OkbNSnEV_PNHTKP2_EYPrFNyZ8Q.js"></script><link href="css/bootstrap.css" rel="stylesheet">

<link href="css/startup.css" rel="stylesheet">

<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
<![endif]-->

<link rel="shortcut icon" href="images/favicon.html">
<script src="js/pace.js"></script>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,600" rel='stylesheet' type='text/css'>
</head>
<body class="signup-v-layout">
<div class="preloader"></div>

<main id="top" class="masthead" role="main">

<div class="container">



<h1>The Most <span data-typer-targets="Easy,Reliable,Secure,Friendly,Simple">Simple</span> <strong>Webiste</strong> <br>
To <strong>Get</strong> Informaion About <strong>COVID</strong></h1>
 <br /><br /><br />
<div class="row">
<div class="col-md-4 col-sm-12 col-md-offset-4">
<div class="signup-block"><form class="form"   runat="server" >

<div class="form-group">
<%--<input class="form-control input-lg" name="email" type="email" placeholder="Enter your email">--%>
<asp:TextBox ID="txtmail" runat="server" class="form-control input-lg" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Invalid Email*" ControlToValidate="txtmail" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="password" type="password" placeholder="Password">--%>
<asp:TextBox ID="txtpass" runat="server" class="form-control input-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Password Required*" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
</div>

<div class="form-group last">
<%--<button type="submit" class="btn btn-success btn-block btn-lg">Sign In</button>--%>
<asp:Button ID="Button1" runat="server" Text="SignIn" 
        class="btn btn-success btn-block btn-lg" onclick="Button1_Click"></asp:Button>

</div><br />
<a href="PRegister.aspx" style="color: #FFFFFF; font-size: large; font-weight: bold;">Sign Up</a>&nbsp&nbsp&nbsp&nbsp
<a href="Forgot.aspx" style="color: #FFFFFF; font-size: large; font-weight: bold;">Forgot Password</a>
</form>

 </div>
 <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>

</div>





<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/easing.js"></script>
<script src="js/typer.js"></script>
<script src="js/nicescroll.js"></script>

<script>
    $(function () {
        $('[data-typer-targets]').typer();
    });
  </script>

<script>


    $(function () {
        $('.scrollto, .gototop').bind('click', function (event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
        });
    });
        

</script>
</body>

<!-- Mirrored from demo.web3canvas.com/themeforest/startupkit/index-v-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Apr 2021 13:09:34 GMT -->
</html>
