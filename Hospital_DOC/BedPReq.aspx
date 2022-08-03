<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="BedPReq.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					</ol>
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Forms</li>
						<li class="breadcrumb-item active">Bed Payment Request</li>
					
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
                                                <th>EMAIL</th>
                                                <th>PHNO</th>
                                                <th>AGE</th>
                                                <th>TOTAL DAY OF ADMIT</th>
                                                <th>TOTAL AMOUNT</th>
												<th>METHOD</th> 												                                                
                                                <th>PAYMENT DATE</th>                                                                                                
												<th>ACTION</th>                                                
											</tr>
										</thead>
										<tbody>
                                        </HeaderTemplate>
											
                                            
                                            <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("pid") %></td>
												<td><%#Eval("pname") %></td>
                                                <td><%#Eval("email") %></td>
                                                <td><%#Eval("phno") %></td>
                                                <td><%#Eval("age") %></td>
                                                <td><%#Eval("tday") %></td>
                                                <td><%#Eval("tamt") %></td>                                     
												<td><%#Eval("method") %></td>                                                                                                                                                                                                         
												<td><%#Eval("pdate") %></td>                                                                                                                                              
                                                <td>
                                                   <a href="DummyAccB.aspx?pid=<%#Eval("pid") %>" class="btn btn-success">ACCEPT</a>
                                                   <a href="DummyDecB.aspx?pid=<%#Eval("pid") %>" class="btn btn-danger">DECLINE</a>                                                  	                                                    
                                                </td>                                                
                                            </ItemTemplate>
                                            </asp:Repeater>												
											    
											<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Bpaid] WHERE ([status] = @status)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
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

