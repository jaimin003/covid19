<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDOC/MasterPage.master" AutoEventWireup="true" CodeFile="dispg.aspx.cs" Inherits="AdminDOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
<div class="page-header">
							<h1>
								DISPLAY GALLERY 
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									BHUSAN MY BOI
								</small>
							</h1>
						</div><!-- /.page-header -->

                        			<div>
									<ul class="ace-thumbnails clearfix">
                                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                        <li>
											<a href='../hosimg/<%#Eval("iname")%>' title="Photo Title" data-rel="colorbox">
												<img width="250" height="250" alt="150x150"  src='../hosimg/<%#Eval("iname")%>'/>
											</a>
                                            <a href="idel.aspx?id=<%#Eval("iid") %>"  class="btn-danger">Delete	</a>	
                                            

											<br />
                                            <br />
                                            <br />
											
										</li>

                                        </ItemTemplate>
                                        </asp:ListView>
										
									
										
										<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [hosimg] ORDER BY [iname]"></asp:SqlDataSource>
										
									
										
										</ul>
                                      </div>

    </form>
</asp:Content>

