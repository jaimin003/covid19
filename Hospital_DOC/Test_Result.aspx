<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Test_Result.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Tables</li>
						<li class="breadcrumb-item active">Bootstrap Tables</li>
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
                                <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
                                <table class="table m-0">
										<thead>
											<tr>
												<th>#ID</th>
												<th>Name</th>
												<th>EMAIL</th>
												<th>BLOOD GROUP</th>
												<th>RESULT</th>
                                                <th>AMOUNT</th>
                                                <th>DATE</th>
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
												<td><%#Eval("result") %></td>
                                                <td><%#Eval("tamt") %></td>
                                                <td><%#Eval("date") %></td>
                                           
												
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
                                        SelectCommand="SELECT * FROM [Tst_Result] WHERE ([hospital] = @hospital)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
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

