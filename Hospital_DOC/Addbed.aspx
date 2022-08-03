<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Addbed.aspx.cs" Inherits="Hospital_DOC_Default" %>

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
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item active">Add Bed & Manage</li>
					</ol>					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Enter Bed Details & Manage</div>
								</div>
								<div class="card-body">
									<div class="row gutters">                                    	                                
                                          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Add Bed</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txttotb" runat="server" class="form-control" 
                                                    placeholder="Enter Total Bed" ></asp:TextBox> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Plzz Enter Add Beds*" ControlToValidate="txttotb" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>                                         
											</div>
										</div>

                                         <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Bed Rent</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txtrent" runat="server" class="form-control" 
                                                    placeholder="Enter Bed Rent" ></asp:TextBox> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter Beds Rent*" ControlToValidate="txtrent" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>                                         
											</div>
										</div>
                                       
                                        	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="text-center">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                                <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                                    Text="Add Bed" onclick="btn_submit_Click"/>
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

