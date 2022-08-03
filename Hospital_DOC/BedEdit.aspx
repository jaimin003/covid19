<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="BedEdit.aspx.cs" Inherits="Hospital_DOC_Default" %>

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
						<li class="breadcrumb-item active">Bed Edit & Delete</li>
					</ol>					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Update Bed Details & Manage</div>
								</div>
								<div class="card-body">
									<div class="row gutters">   
                                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">HOSPITAL NAME</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txthname" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>                                                
											</div>
										</div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">ADD BED</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                              <asp:TextBox ID="txtaddb" runat="server" class="form-control"></asp:TextBox> 
                                                
											</div>
										</div>
                                          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">New Rent Amt</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                              <asp:TextBox ID="txtnrent" runat="server" class="form-control"></asp:TextBox> 
                                                
											</div>
										</div>
                                            
   	                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="text-center">												
                                               <asp:Button ID="btn_addbed" runat="server" class="btn btn-primary" 
                                                    Text="UPDATE DATA" onclick="btn_addbed_Click"/><br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Plzz Add Beds*" ControlToValidate="txtaddb" ForeColor="Red"></asp:RequiredFieldValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter Beds Rent*" ControlToValidate="txtnrent" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                    <%--     <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">ADD OCUPIED BED</label>--%>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                             <%-- <asp:TextBox ID="txtoccub" runat="server" class="form-control"></asp:TextBox>  
                                                  
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="text-center">--%>
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                        <%--       <asp:Button ID="btn_occupied" runat="server" class="btn btn-primary" 
                                                    Text="ADD OCUPIED BED" onclick="btn_occupied_Click"/><br />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter Occupied Beds*" ControlToValidate="txtoccub" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
											</div>
										</div>
                                          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">ADD FREE BED</label>--%>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">
                                                <asp:TextBox ID="txtfreeb" runat="server" class="form-control"></asp:TextBox> 
                                                                                                            
											</div>
										</div>
                                        	<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="text-center">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                        <%--        <asp:Button ID="btn_freebed" runat="server" class="btn btn-primary" 
                                                    Text="ADD FREE BED" onclick="btn_freebed_Click"/><br />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Plzz Enter Free Beds*" ControlToValidate="txtfreeb" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
											</div>
										</div>
            </div>--%>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
        </div>

        </form>
</asp:Content>

