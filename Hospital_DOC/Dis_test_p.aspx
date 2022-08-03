<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Dis_test_p.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <form id="form2" runat="server">
<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					</ol>
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Tables</li>
						<li class="breadcrumb-item active">Bootstrap Tables</li>
					
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
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2"  >
                                <HeaderTemplate>
								<div class="table-responsive">
									<table class="table m-0">
										<thead>
											<tr>
												<th>PATIENT NAME</th>												
                                                <th>HOSPITAL</th>
                                                <th>ACTION</th>
											</tr>
										</thead>
										<tbody>
                                        </HeaderTemplate>
											
                                            
                                            <ItemTemplate>
                                            <tr>
                                                <td> <%#Eval("pname") %></td>																								
                                                <td> <%#Eval("hname") %></td>
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                    	<%--<a href="dummyreq.aspx?pname=<%#Eval("pname") %>&mail=<%#Eval("email") %>&phno=<%#Eval("phno") %>&name=<%#Eval("cname") %>&id=<%#Eval("idno") %>&dose=<%#Eval("vdose") %>&bid=<%#Eval("bid") %>&action=ACCEPTED" class="btn btn-success"> Acccept</a>&nbsp--%>
                                                       <a href="pos_p.aspx?pname=<%#Eval("pname") %>&hname=<%#Eval("hname") %>" class="btn btn-danger"> DISCHARGE</a>
                                            </ItemTemplate>
                                            </asp:Repeater>												
											    
										
											<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT * FROM [positive_c] WHERE (([status] = @status) AND ([hname] = @hname))">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                                    <asp:SessionParameter Name="hname" SessionField="hname" Type="String" />
                                                </SelectParameters>
                                </asp:SqlDataSource>	    
											    
											    
											    
											    
											    
											    
											</tr>
										</tbody>
									</table>
								</div>
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

