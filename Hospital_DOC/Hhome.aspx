<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Hhome.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles primary">
								<img src="img/hospital/app.png" alt="Appointments" />
								<p>Total Appointments</p>
								<h2>
                                <asp:Label ID="lblapp" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles blue">
								<img src="img/hospital/patients.png" alt="Patients" />
								<p>New Patients</p>
								<h2> <asp:Label ID="lblp" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles red">
								<img src="img/hospital/beds.png" alt="Operations" />
								<p>Total Bed</p>
								<h2> <asp:Label ID="lblbed" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles yellow">
								<img src="img/hospital/vc.png" alt="Doctors" />
								<p>Vaccine Center</p>
								<h2> <asp:Label ID="lblvc" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles secondary">
								<img src="img/hospital/doc.png" alt="Staff" />
								<p>Total Doctor</p>
								<h2> <asp:Label ID="lbld" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles green">
								<img src="img/hospital/plasma.png" alt="Earnings" />
								<p>Plasma Doners</p>
								<h2> <asp:Label ID="lbldn" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
					</div>
					<!-- Row end -->

					

					

					<!-- Row start -->
					<div class="row gutters">
                        
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
                          <div class="card">
								<div class="card-header">
									<div class="card-title">Top Doctors</div>
								</div>
								<div class="card-body">
                                 <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                 <ItemTemplate>
                                    <div class="top-doctors-container">
                                        <div class="top-doctor">
											<img src="../DocImg/<%#Eval("img") %>" class="avatar" alt="Agent">
											<div class="doctor-details">
												<h5><%#Eval("name") %></h5>
												<h6><%#Eval("desg") %></h6>
											</div>
										</div>
									
									</div>
                                    </ItemTemplate>
                        </asp:ListView>
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([hospital] = @hospital)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
								</div>
							</div>
						</div>
                        
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Our Events</div>
								</div>
								<div class="card-body">
									<ul class="custom-messages">
                                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
										<li class="clearfix">
                                        <img src="../Lab_events/<%#Eval("img") %>" class="customer" alt="Agent">
											
											<div class="delivery-details">
												<span class="badge"></span>
												<h5><%#Eval("ename") %></h5>
												<p><%#Eval("description") %></p>
											</div>
										</li>
                                        </ItemTemplate>
										</asp:ListView>
									    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [Event_mstr] WHERE ([hospital] = @hospital) ORDER BY [date]">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Our Services</div>
								</div>
								<div class="card-body">
									<div class="card-body">
									<ul class="custom-messages">
                                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" >
                                    <ItemTemplate>
										<li class="clearfix">
                                        <img src="../lab_service_img/<%#Eval("img") %>" class="customer" alt="Agent">
											
											<div class="delivery-details">
												<span class="badge"></span>
												<h5><%#Eval("servicename") %></h5>
												<p><%#Eval("description") %></p>
											</div>
										</li>
                                        </ItemTemplate>
										</asp:ListView>
									    
									    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [Service_mstr] WHERE ([hospital] = @hospital)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
									    
									</ul>
								</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

    </form>

</asp:Content>

