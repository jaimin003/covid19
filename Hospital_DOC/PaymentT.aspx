<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="PaymentT.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
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
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
								<div class="table-responsive">
									<table class="table m-0">
										<thead>
											<tr>
												<th>#ID</th>
												<th>NAME</th>
												<th>EMAIL</th>
												<th>BLOOD GROUP</th>
                                                <th>AMOUNT</th>
												<th>ACTION</th>                                                
											</tr>
										</thead>
										<tbody>
                                        </HeaderTemplate>
											
                                            
                                            <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("id") %></td>
												<td><%#Eval("name") %></td>
												<td><%#Eval("email") %></td>
												<td><%#Eval("bldgrp") %></td>
                                                <td><%#Eval("tamt") %></td>                                                
                                                <td>
                                                   <a href="DummyAcc.aspx?tid=<%#Eval("id") %>" class="btn btn-success">ACCEPT</a>
                                                   <a href="DummyDec.aspx?tid=<%#Eval("id") %>" class="btn btn-danger">DECLINE</a>                                                  	                                                    
                                                </td>                                                
                                            </ItemTemplate>
                                            </asp:Repeater>												
											    
											    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [Test_request] WHERE (([status] = @status) AND ([hospital] = @hospital))">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                                        <asp:SessionParameter Name="hospital" SessionField="Hname" Type="String" />
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

