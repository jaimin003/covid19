<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="pos_p.aspx.cs" Inherits="Hospital_DOC_Default" %>

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
									<table class="table m-0">
										<thead>
											<tr>
												
												<th>PATIENT NAME</th>
											    <th>ACTION</th>                                      
											</tr>
										</thead>
										<tbody>
                                       
                                            <tr>
                                            
                                                
												<td><asp:Label ID="lblpname" runat="server" Text="Label"></asp:Label></td>
												<td>
                                                   <a href="Dummy_Recover.aspx?flag=0&result=Recover" class="btn btn-success">Recover</a>
                                                   <a href="Dummy_Death.aspx?flag=0&result=Death" class="btn btn-danger">Death</a>                                                  	                                                    
                                                </td>                                                
                                       	
											    
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

