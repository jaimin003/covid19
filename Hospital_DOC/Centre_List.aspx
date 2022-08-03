<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Centre_List.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

	<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Doctors</li>
						<li class="breadcrumb-item active">Vaccine Centre List</li>
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
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                    <HeaderTemplate>
                                    <table id="basicExample" class="table">
										<thead>
											<tr>												
											<th>CENTRE NAME</th>
                                            <th>VACCINE NAME</th>
												<th>ADDRESS</th>
												<th>ZONE</th>												
												<th>PRICE</th>
												<th>Ph No</th>
                                                <th>AGE</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
												<td> 
                                                   <%#Eval("cname") %></td>
                                                   <td><%#Eval("vname") %></td>
												<td> <%#Eval("address") %></td>
												<td> <%#Eval("zone") %></td>
												<td> <%#Eval("price") %></td>
												<td>  <%#Eval("phno") %></td>
												<td> ABOVE <%#Eval("age") %></td>
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                   <a href="Vcentre_Update.aspx?vid=<%#Eval("vid") %>&name=<%#Eval("cname") %>&add=<%#Eval("address") %>&phno=<%#Eval("phno") %>&price=<%#Eval("price") %>&vname=<%#Eval("vname") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="Vcentre_Delete.aspx?vid=<%#Eval("vid") %>" class="btn btn-danger icon-cancel"></a>
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
                                        SelectCommand="SELECT * FROM [Vcentre_mstr] WHERE ([hname] = @hname)">
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
    </div>
    </form>
</asp:Content>

