<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Doc_AB.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					</ol>
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Dashboard</li>
						<li class="breadcrumb-item active">Appointments Request</li>
					
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
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                <HeaderTemplate>
								<div class="table-responsive">
									<table class="table m-0">
										<thead>
											<tr>
												<th>PID</th>
												<th>PATIENT NAME</th>
                                                <th>DOCTOR NAME</th>
                                                <th>DOCTOR DESG</th>
												<th>EMAIL</th>
												<th>PHNO</th>
                                                <th>FEES</th>
                                                <th>BOOK DATE</th>                                                
												<th>ACTION</th>                                                
											</tr>
										</thead>
										<tbody>
                                        </HeaderTemplate>
											
                                            
                                            <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("pid") %></td>
												<td><%#Eval("pname") %></td>
                                                <td><%#Eval("dname") %></td>
                                                <td><%#Eval("desg") %></td>
												<td><%#Eval("email") %></td>
                                                <td><%#Eval("phno") %></td>
                                                <td><%#Eval("fees") %></td>                                                
												<td><%#Eval("date") %></td>                                                                                              
                                                <td>
                                                   <a href="DummyAccAB.aspx?pid=<%#Eval("pid") %>" class="btn btn-success">ACCEPT</a>
                                                   <a href="DummyDecAB.aspx?pid=<%#Eval("pid") %>" class="btn btn-danger">DECLINE</a>                                                  	                                                    
                                                </td>                                                
                                            </ItemTemplate>
                                            </asp:Repeater>												
											    
											
											    
											
											    
											<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT * FROM [Appointment_mstr] WHERE (([status] = @status) AND ([date] = @date))">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                                    <asp:SessionParameter DbType="Date" Name="date" SessionField="tdate" />
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

