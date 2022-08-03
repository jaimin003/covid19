<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDOC/MasterPage.master" AutoEventWireup="true" CodeFile="Doctor_list.aspx.cs" Inherits="AdminDOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">


  <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Doctor's List</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Doctors</li>
                                </ul>
                            </nav>
                        </div>
                        
                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                              
                                                <th class="border-bottom py-3" style="min-width: 180px;">Name</th>
                                                <th class="border-bottom py-3">HOSPITAL</th>
                                                <th class="border-bottom py-3">BRANCH</th>
                                                <th class="border-bottom py-3">EMAIL</th>
                                                <th class="border-bottom py-3">DESG</th>
                                                <th class="border-bottom py-3">PHONE NO.</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                                <tr>
                                                
                                                <td class="py-3">
                                                    <a href="#" class="text-dark">
                                                        <div class="d-flex align-items-center">
                                                            <img src="../DocImg/<%#Eval("img")%>" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                            <span class="ms-2"><%#Eval("name") %></span>
                                                        </div>
                                                    </a>
                                                </td>
                                                <td><%#Eval("hospital")%></td>
                                                <td><%#Eval("branch")%></td>
                                                <td><%#Eval("email")%></td>
                                                <td><%#Eval("desg")%></td>
                                                <td><%#Eval("phno")%></td>
                                                
                                               
                                            </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                            </tbody>
                                    </table>
                                </FooterTemplate>
                                </asp:Repeater>
                                    
                                            
                                            
                                           
                                        
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [Doctor_mstr] ORDER BY [hospital]"></asp:SqlDataSource>
                                    
                                            
                                            
                                           
                                        
                                </div>
                            </div>
                        </div><!--end row-->

                       
                    </div>
                </div><!--end container-->
    </form>
</asp:Content>

