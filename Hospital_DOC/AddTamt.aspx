<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="AddTamt.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">




		<div class="container-fluid">
        	<!-- Navigation start -->
			<nav class="navbar navbar-expand-lg custom-navbar">
						</nav>
			<!-- Navigation end -->


			<!-- *************
				************ Main container start *************
			************* -->
			<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Forms</li>
						<li class="breadcrumb-item active">Add Test Amount</li>
					</ol>					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Enter Covid Test Amount</div>
								</div>
								<div class="card-body">
									<div class="row gutters">                                    	                                
                                          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Covid Test</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txttamt" runat="server" class="form-control" 
                                                    placeholder="Enter Covid Test Amount" ></asp:TextBox> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Please Enter Amt*" ControlToValidate="txttamt" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>                                         
											</div>
										</div>

                                         	<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="text-center">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                                <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                                    Text="Submit Amount" onclick="btn_submit_Click" />
											</div>
										</div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
        </div>

        </form>

</asp:Content>

