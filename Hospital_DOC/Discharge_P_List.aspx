<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="Discharge_P_List.aspx.cs" Inherits="Hospital_DOC_Default" %>

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
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
								<div class="table-responsive">
									<table class="table m-0">
										<thead>
											<tr>
												<th>PATIENT NAME</th>
												<th>STATUS</th>
											</tr>
										</thead>
										<tbody>
                                        </HeaderTemplate>
											
                                            
                                            <ItemTemplate>
                                            <tr>
                                                <td> <%#Eval("pname") %></td>
												 <td> <%#Eval("status") %></td>
                                            </ItemTemplate>
                                            </asp:Repeater>												
											    
									
											    
											    
											<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Discharge_p] WHERE ([hname] = @hname)">
                                                <SelectParameters>
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

