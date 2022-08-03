<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Plazma_donors.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

	<div class="main-container">


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
											<th>Donor Name</th>
												<th>Email</th>
												<th>Contact Number</th>												
												<th>Blood Group</th>
												<th>Corona Report</th>
                                                
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
												<td> 
                                                   <%#Eval("donorname") %></td>
												<td> <%#Eval("email") %></td>
												<td> <%#Eval("cno") %></td>
												<td> <%#Eval("bldgrp") %></td>
												<td>  <%#Eval("c_report") %></td>
												
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                   
                                                      <a href="Plazma_delete.aspx?id=<%#Eval("pid") %>" class="btn btn-danger icon-cancel"></a>
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
                                        
                                        SelectCommand="SELECT * FROM [plazma_mstr] WHERE (([status] = @status) AND ([hname] = @hname))">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                                            <asp:SessionParameter Name="hname" SessionField="hname" Type="String" />
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

