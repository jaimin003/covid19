<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hlogin.aspx.cs" Inherits="Hospital_DOC_Llogin" %>


<!doctype html>
<html lang="en">
	
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:33:24 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="img/fav.png" />

		<!-- Title -->
		<title>Covid Hospitals Admin Template - Login</title>
		
		<!-- *************
			************ Common Css Files *************
			************ -->
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- Master CSS -->
		<link rel="stylesheet" href="css/main.css" />

	</head>

	<body class="authentication">

		<!-- Container start -->
		<div class="container">
			
			<form runat="server">
				<div class="row justify-content-md-center">
					<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="login-logo">
									Covid Hospital
								</a>
								<h5>Welcome back,<br />Please Login to your Account.</h5>
								<div class="form-group">
									<%--<input type="text" class="form-control" placeholder="Email Address" />--%>
                                    <asp:TextBox ID="txtmail" class="form-control" placeholder="Email Address" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="Plzz Enter Email*" ControlToValidate="txtmail" ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
								</div>
								<div class="form-group">
                                    <asp:TextBox ID="txtpass" runat="server" class="form-control" 
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="Plzz Enter Password" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
									<%--<input type="password" class="form-control" placeholder="Password" />--%>
								</div>
								<div class="actions">
									<a href="Forgot_password.aspx">Recover password</a>
									<%--<button type="submit" class="btn btn-info">Login</button>--%>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="Login" 
                                        onclick="Button1_Click" />
								</div>
								<hr>
								<div class="m-0">
									<span class="additional-link">No account? <a href="Hospital_Register.aspx" class="btn btn-secondary">Signup</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<!-- Container end -->

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:33:24 GMT -->
</html>