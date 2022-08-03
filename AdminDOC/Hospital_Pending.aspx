<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDOC/MasterPage.master" AutoEventWireup="true" CodeFile="Hospital_Pending.aspx.cs" Inherits="AdminDOC_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Lab's Pending</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Pending Hospitals</li>
                                </ul>
                            </nav>
                        </div>
                        
                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-bottom py-3" style="min-width: 50px;">ID</th>
                                                <th class="border-bottom py-3" style="min-width: 180px;">Name</th>
                                                <th class="border-bottom py-3">MAil</th>
                                                <th class="border-bottom py-3">PASSWORD</th>
                                                <th class="border-bottom py-3">STATE</th>
                                                <th class="border-bottom py-3">CITY</th>
                                                
                                                <th class="border-bottom py-3">VERIFY</th>
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
                                                <td><%#Eval("State") %></td>
                                                <td><%#Eval("city") %></td>
                                                
                                                <td><a class="btn btn-outline-secondary btn-sm-edit" href="Hospital_verified.aspx?id=<%#Eval("id")%>" title="verify"
                                    <i class="fas fa-pencil-alt" runat="server" id="i1">Verify </i></td>
                                                <td class="text-end">
                                                
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
                                        SelectCommand="SELECT * FROM [Hospital_mstr] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                             
                                </div>
                            </div>
                        </div><!--end row-->


    </form>
</asp:Content>

