<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDOC/MasterPage.master" AutoEventWireup="true" CodeFile="Hospital_list.aspx.cs" Inherits="AdminDOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


       <form id="form1" runat="server">


       <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Hospitals List</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Hospitals</li>
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
                                                <th class="border-bottom py-3" style="min-width: 50px;">ID</th>
                                                <th class="border-bottom py-3" style="min-width: 180px;">NAME</th>
                                                <th class="border-bottom py-3">MAIL</th>
                                                <th class="border-bottom py-3">PASSWORD</th>
                                                <th class="border-bottom py-3">STATE</th>
                                                <th class="border-bottom py-3">CITY</th>
                                                <th class="border-bottom py-3">ACTION</th>
                                                <th class="border-bottom py-3" style="min-width: 100px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                          <tr>
                                                <th><%#Eval("id") %></th>
                                                <td class="py-3">
                                                    <a href="#" class="text-dark">
                                                        <div class="d-flex align-items-center">
                                                           
                                                            <span class="ms-2"><%#Eval("name") %></span>
                                                        </div>
                                                    </a>
                                                </td>
                                                <td><%#Eval("mail") %></td>
                                                <td><%#Eval("password") %></td>
                                                <td><%#Eval("state") %></td>
                                                <td><%#Eval("city") %></td>
                                                <td>
                                                    <a href="Hview.aspx?id=<%#Eval("id") %>" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal"><i class="uil uil-eye"></i></a>                                                    
                                                    &nbsp&nbsp&nbsp&nbsp
                                                 <%--   <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" ><i class="uil uil-pen"></i></a>--%>
                                                    <a href="Hdel.aspx?id=<%#Eval("id") %>" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                                </td>
                                                
                                            </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                        </tbody>
                                    </table>
                                    </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [Hospital_mstr] ORDER BY [state]">
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div><!--end row-->

                       <%-- <div class="row text-center">
                            <div class="col-12 mt-4">
                                <ul class="pagination justify-content-end mb-0 list-unstyled">
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border"> Prev</a></li>
                                    <li class="active"><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">1</a></li>
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">2</a></li>
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">Next </a></li>
                                </ul><!--end pagination-->
                            </div><!--end col-->
                        </div><!--end row-->--%>
                    </div>
                </div><!--end container-->
       </form>
</asp:Content>

