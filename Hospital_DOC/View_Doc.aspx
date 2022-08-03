<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital_DOC/MasterLab.master" AutoEventWireup="true" CodeFile="View_Doc.aspx.cs" Inherits="Hospital_DOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active">Doctors</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
							
                                
                                <figure class="user-card">
								<figcaption>
                                     <img src="../DocImg/<%#Eval("img")%>" alt="Royal Hospitals Admin Template" class="profile">
									<h5><%#Eval("name") %></h5>
									<h6 class="designation"><%#Eval("desg") %></h6>
									<p><%#Eval("bio") %></p>
									
								</figcaption>
							</figure>	
						</div>
						</ItemTemplate>
                                </asp:Repeater>
									<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Doctor_mstr] WHERE ([hospital] = @hospital)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hospital" SessionField="Hname" Type="String" />
                                        </SelectParameters>
                            </asp:SqlDataSource>
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
    </form>
</asp:Content>

