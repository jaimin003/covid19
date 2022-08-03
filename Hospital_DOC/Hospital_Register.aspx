<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hospital_Register.aspx.cs" Inherits="Hospital_DOC_Lab_Register" %>

<!doctype html>
<html lang="en">
	
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="img/fav.png" />

		<!-- Title -->
		<title>Hospital Register</title>
		

		<!-- *************
			************ Common Css Files *************
			************ -->
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- Main CSS -->
		<link rel="stylesheet" href="css/main.css" />

	</head>

	<body class="authentication">

		<!-- Container start -->
		<div class="container">
			
			<form id="form1" runat="server">
				<div class="row justify-content-md-center">
					<div class="col-xl-5 col-lg-6 col-md-6 col-sm-12">
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="login-logo">
									Covid Hospital
								</a>
								<h5>Welcome,<br />Register Your Hospital Here</h5>
								<div class="form-group">
                                <label class="form-label ">Enter Hospital</label>
									<%--<input type="text" class="form-control" placeholder="Lab Name" />--%>
                                    <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Hospital Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="Plzz Enter Lab Name*" ControlToValidate="txtlname" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
                                <div class="form-group">
                                <label class="form-label ">Enter Hospital Email</label>
									<%--<input type="text" class="form-control" placeholder="Email Address" />--%>
                                    <asp:TextBox ID="txtmail" runat="server" class="form-control" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="Plzz Enter Lab Email*" ControlToValidate="txtmail" 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
								</div>
								  <div class="form-group">
                                <label class="form-label ">Ente Password</label>
									
                                    
										<%--<input type="password" class="form-control" placeholder="Password" />--%>
                                        <asp:TextBox ID="txtpass" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ErrorMessage="Plzz Enter Lab Password*" ControlToValidate="txtpass" 
                                            ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                <div class="form-group">
                                    <label class="form-label ">Select State</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" class="form-control" DataTextField="sname" 
                                            DataValueField="sid" AutoPostBack="True">
                                        </asp:DropDownList>
									    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
									</div><br />
                                    
									<div class="form-group">
                                    <label class="form-label ">Select City</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" 
                                            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="cname" 
                                            DataValueField="cid">
                                        </asp:DropDownList>
								        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="sid" 
                                                    PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
								    </div>
                                  
                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                     <label class="form-label ">Select Zone</label>
                                    <div class="form-group">
                                        
                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" 
                                            DataSourceID="SqlDataSource3" DataTextField="zname" DataValueField="zid">
                                           
                                        </asp:DropDownList>
								    
								        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [Zone_mstr]"></asp:SqlDataSource>
								    
								    </div>

                                    <div class="form-group">
                                        <label class="form-label ">Select Type Of Hospital</label>
                                        <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                            <asp:ListItem>Private</asp:ListItem>
                                            <asp:ListItem>Government</asp:ListItem>                                        
                                        </asp:DropDownList>								    
								    </div>
                                      <div class="form-group">
                                <label class="form-label ">Enter Ph No</label>
									<%--<input type="text" class="form-control" placeholder="Email Address" />--%>
                                    <asp:TextBox ID="txtphno" runat="server" class="form-control" placeholder="Enter Ph No"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                              ErrorMessage="Plzz Enter Hospital Pone Number*" ControlToValidate="txtphno" 
                                              ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
                                <div class="form-group">
                                <label class="form-label ">Enter Address</label>
									<%--<input type="text" class="form-control" placeholder="Lab Name" />--%>
                                    <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ErrorMessage="Plzz Enter Hospital Address*" ControlToValidate="txtadd" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
								</div>
								<div class="actions">
									<%--<button type="submit" class="btn btn-primary">Signup</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Sign Up" class="btn btn-primary" 
                                        onclick="Button1_Click" />
								</div>
								<hr>
								<div class="m-0">
									<span class="additional-link">Already have an account? <a href="Hlogin.aspx" class="btn btn-secondary">Login</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<!-- Container end -->

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
</html>