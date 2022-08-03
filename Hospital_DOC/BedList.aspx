<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="BedList.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form2" runat="server">

	<div class="main-container">
  
				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item active">Bed List & Manage</li>
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
                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                                    <HeaderTemplate>
                                    <table id="basicExample" class="table">
										<thead>
											<tr>												
											<th>HOSHPITAL NAME</th>
												<th>TOTAL BEDS</th>
												<th>TOTAL OCCUPIED BEDS</th>												
												<th>TOTAL VACANT</th>
                                                <th>RENT</th>
												<th>PH NO</th>                                                
												<th>ACTIONS</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
												<td> <%#Eval("hname") %>  </td>
												<td> <%#Eval("totbed") %></td>
												<td> <%#Eval("occupied") %></td>
												<td> <%#Eval("freebed") %> </td>
                                                <td><%#Eval("rent") %> </td>																						                                                
												<td><%#Eval("phno") %> </td>																						                                                
												<td><div class="btn-group btn-group-sm">                                                          
                                                    <a href="BedEdit.aspx?hname=<%#Eval("hname")%>&totbed=<%#Eval("totbed")%>&occupied=<%#Eval("occupied")%>&freebed=<%#Eval("freebed")%>&rent=<%#Eval("rent") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="BedDel.aspx?hname=<%#Eval("hname")%>" class="btn btn-danger icon-cancel"></a>
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
                                        SelectCommand="SELECT * FROM [Addbed_mstr] WHERE ([hname] = @hname)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hname" SessionField="Hname" Type="String" />
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

