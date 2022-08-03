<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Doc_List.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<form id="form1" runat="server">

	<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Doctors</li>
						<li class="breadcrumb-item active">Doctor List</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="table-container">
								
								<!--*************************
									*************************
									*************************
									Basic table start
								*************************
								*************************
								*************************-->
								<div class="table-responsive">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <HeaderTemplate>
                                    <table id="basicExample" class="table">
										<thead>
											<tr>												
											<th>Branch Name</th>
												<th>Name</th>
												<th>Email</th>												
												<th>Designation</th>
												<th>Ph No</th>
                                                <th>Bio</th>
                                                <th>Fees</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
												<td> 
                                                   <%#Eval("branch") %></td>
												<td> <%#Eval("name") %></td>
												<td> <%#Eval("email") %></td>
												<td> <%#Eval("desg") %></td>
												<td>  <%#Eval("phno") %></td>
												<td> <%#Eval("bio") %></td>												                                                
                                                <td> <%#Eval("fees") %></td>												                                                
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                    <a href="HosDoc_Update.aspx?did=<%#Eval("did") %>&name=<%#Eval("name") %>&email=<%#Eval("email") %>&desg=<%#Eval("desg") %>&phno=<%#Eval("phno") %>&bio=<%#Eval("bio") %>&img=<%#Eval("img") %>&fees=<%#Eval("fees") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="HosDoc_Delete.aspx?did=<%#Eval("did") %>" class="btn btn-danger icon-cancel"></a>
														<%-- <button type="button" class="btn btn-info">
															<i class="icon-edit1">
                                                            </i>
														</button>--%>
														<%--<button type="button" class="btn btn-danger">
															<i class="icon-cancel"></i>
														</button>--%>
													</div>
												</td>
											</tr>										
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
									</table>
								</div>
                                    </FooterTemplate>
									</asp:Repeater>
									
                                    
								  
									
                                    
								    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([hospital] = @hospital)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hospital" SessionField="Hname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
									
                                    
								  
									
                                    
								<!--*************************
									*************************
									*************************
									Basic table end
								*************************
								*************************
								*************************-->

							</div>
						</div>
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
            <!-- Required jQuery first, then Bootstrap Bundle JS -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/moment.js"></script>


		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Data Tables -->
		<script src="vendor/datatables/dataTables.min.js"></script>
		<script src="vendor/datatables/dataTables.bootstrap.min.js"></script>
		
		<!-- Custom Data tables -->
		<script src="vendor/datatables/custom/custom-datatables.js"></script>

		<!-- Main Js Required -->
		<script src="js/main.js"></script>
    </div>
    </form>
</asp:Content>

