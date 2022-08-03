<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Asignup.aspx.cs" Inherits="AdminDOC_Assets_Asignupaspx" %>

<!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Sign Up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="shreethemes@gmail.com" />
        <meta name="website" content="http://www.shreethemes.in" />
        <meta name="Version" content="v1.0.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="images/favicon.ico">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="css/remixicon.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v3.0.6/css/line.css">
        <!-- Css -->
        <link href="css/style.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body>
        <!-- Loader -->
        <%--<div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>--%>
        <!-- Loader -->
       
       <%-- <div class="back-to-home rounded d-none d-sm-block">
            <a href="index.html" class="btn btn-icon btn-primary"><i data-feather="home" class="icons"></i></a>
        </div>--%>

        <!-- Hero Start -->
        <section class="bg-half-150 d-table w-100 bg-light" style="background: url('images/bg/bg-lines-one.png') center;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-8">
                        <img src="images/logo-dark.png" height="24" class="mx-auto d-block" alt="">
                        <div class="card login-page bg-white shadow mt-4 rounded border-0">
                            <div class="card-body">
                                <h4 class="text-center">Sign Up</h4>  
                                <form id="Form1" action="" class="login-form mt-4" runat="server">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="mb-3">                                               
                                                <label class="form-label">First name <span class="text-danger">*</span></label>
                                                <%--<input type="text" class="form-control" placeholder="First Name" name="s" required="">--%>
                                                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required*" 
                                                    ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">Your Email <span class="text-danger">*</span></label>
                                                <asp:TextBox ID="txtmail" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                                <%--<input type="email" class="form-control" placeholder="Email" name="email" required="">--%>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="*Invalid Email" ControlToValidate="txtmail" ForeColor="Red" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">Password <span class="text-danger">*</span></label>
                                                <%--<input type="password" class="form-control" placeholder="Password" required="">--%>
                                                <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Requird*" 
                                                    ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">Image Upload <span class="text-danger">*</span></label>
                                                <%--<input type="password" class="form-control" placeholder="Password" required="">--%>
                                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Plzz Upload a File*" 
                                                    ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">Image Preview <span class="text-danger">*</span></label>
                                                <%--<input type="password" class="form-control" placeholder="Password" required="">--%>
                                                <asp:Image ID="Image1" runat="server" class="form-control"></asp:Image>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="d-grid">
                                                <asp:Button ID="btn_upload" class="btn btn-success" runat="server" 
                                                    Text="Upload" onclick="btn_upload_Click" ></asp:Button>
                                                <%--<button class="btn btn-success">Upload</button>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <div class="form-check">
                                                    <%--<input class="form-check-input align-middle" type="checkbox" value="" id="accept-tnc-check">
                                                    <label class="form-check-label" for="accept-tnc-check">I Accept <a href="#" class="text-primary">Terms And Condition</a></label>--%>
                                                    <asp:Label ID="Label1" runat="server" Text="" class="text-primary"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="d-grid">
                                                <%--<button class="btn btn-primary">Register</button>--%>
                                                <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                                    Text="Register" onclick="btn_submit_Click" ></asp:Button>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 mt-3 text-center">
                                            <h6 class="text-muted">Or</h6>
                                        </div><!--end col-->
                                        
                                        <div class="col-6 mt-3">
                                            <div class="d-grid">
                                                <a href="javascript:void(0)" class="btn btn-soft-primary"><i class="uil uil-facebook"></i> Facebook</a>
                                            </div>
                                        </div><!--end col-->
                                        
                                        <div class="col-6 mt-3">
                                            <div class="d-grid">
                                                <a href="javascript:void(0)" class="btn btn-soft-primary"><i class="uil uil-google"></i> Google</a>
                                            </div>
                                        </div><!--end col-->

                                        <div class="mx-auto">
                                            <p class="mb-0 mt-3"><small class="text-dark me-2">Already have an account ?</small> <a href="Alogin.aspx" class="text-dark fw-bold">Sign in</a></p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div><!---->
                    </div> <!--end col-->
                </div><!--end row-->
            </div> <!--end container-->
        </section><!--end section-->
        <!-- Hero End -->
        
        <!-- javascript -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Icons -->
        <script src="js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="js/app-admin.js"></script>
        
    </body>

</html>