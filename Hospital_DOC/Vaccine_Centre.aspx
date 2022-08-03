<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Vaccine_Centre.aspx.cs" Inherits="Hospital_DOC_Default" %>

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
						<li class="breadcrumb-item">Vaccination</li>
						<li class="breadcrumb-item active">Add Vaccination Center</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
			
						<div class="col-xl-12 col-lg-6 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Enter Vaccine Centre</div>
								</div>
								<div class="card-body">
									<div class="row gutters">
                                    	
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Vaccine Centre Name</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txtcname" runat="server" class="form-control" placeholder="Enter Centre Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Plzz Enter Vaccine Centre Name*" ControlToValidate="txtcname" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Centre Address</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="Enter Centre Address"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter Centre Address*" ControlToValidate="txtadd" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputEmail">Select Vaccine Name</label>
												<%--<input type="email" class="form-control" id="inputEmail" placeholder="doctor@bm.com">--%>
                                                <asp:DropDownList ID="ddlvname" runat="server" class="form-control">
                                                    <asp:ListItem>Zydus</asp:ListItem>
                                                    <asp:ListItem>Covid Shield</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputEmail">Select Centre Zone</label>
												<%--<input type="email" class="form-control" id="inputEmail" placeholder="doctor@bm.com">--%>
                                                <asp:DropDownList ID="ddlzone" runat="server" class="form-control">
                                                    <asp:ListItem>Central Zone</asp:ListItem>
                                                    <asp:ListItem>North Zone</asp:ListItem>
                                                    <asp:ListItem>South Zone</asp:ListItem>
                                                    <asp:ListItem>East Zone</asp:ListItem>
                                                    <asp:ListItem>West Zone</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>
										
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Enter Vaccine Price</label>
												<%--<input type="text" class="form-control" id="inputSpeciality" placeholder="Speciality">--%>
                                                <asp:TextBox ID="txtprc" runat="server" class="form-control" placeholder="Price"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Plzz Enter Vaccine Prize*" ControlToValidate="txtprc" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Contact Number</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txtphno" runat="server" class="form-control" placeholder="Contact number" TextMode="Phone"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ErrorMessage="Plzz Enter Contact Number*" ControlToValidate="txtphno" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Select State</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:DropDownList ID="ddlstate" runat="server" class="form-control" 
                                                    AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="sname" 
                                                    DataValueField="sid">
                                                </asp:DropDownList>
											    
											    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
											    
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Select City</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"
                                                    DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid" 
                                                    AutoPostBack="True">
                                                </asp:DropDownList>
											    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlstate" Name="sid" 
                                                            PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Applicable Age</label>
												<%--<input type="text" class="form-control" id="inputSpeciality" placeholder="Speciality">--%>
                                                <asp:DropDownList ID="ddlage" class="form-control" runat="server">
                                                    <asp:ListItem Value="45">Above 45</asp:ListItem>
                                                    <asp:ListItem Value="18">Above 18</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>
									
										
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="text-right">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                                <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                                    Text="Add Centre" onclick="btn_submit_Click"  />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
			<!-- *************
				************ Main container end *************
			************* -->

			

		</div>

		<!-- *************
			************ Required JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/moment.js"></script>


		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Main Js Required -->
		<script src="js/main.js"></script>

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/hospital-add-doctor.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:32:38 GMT -->
</html>
        </form>

</asp:Content>

