<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="CTestp.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Forms</li>
						<li class="breadcrumb-item active">Covid Test Amount</li>
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
                                <table class="table m-0">
										<thead>
											<tr>
												
												<th>Hoshpital Name</th>
												<th>Covid Test Amount</th>
												<th>Action</th>												
											</tr>
										</thead>
										<tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                <tr>
                                            
                                                <td><%#Eval("hname") %></td>
												<td><%#Eval("tamt") %></td>												                                           
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                   <a href="Tamtedit.aspx?hname=<%#Eval("hname") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="Tamtdel.aspx?hname=<%#Eval("hname") %>" class="btn btn-danger icon-cancel"></a>
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
                                        SelectCommand="SELECT * FROM [Test_amt] WHERE ([hname] = @hname)">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="hname" Name="hname" SessionField="hname" 
                                                Type="String" />
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

							

    </form>
</asp:Content>

