<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="Vaccineinfo.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       


        <form id="form1" runat="server">
       

        <h2 class="display-2 text-center text-danger">Vaccine Centres</h2>
        <!-- Shop Cart Page Section start here -->		            
        <div class="shop-cart padding-tb">
            <div class="container">
                 <label class="form-label ">Select State</label>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" class="form-control" DataTextField="sname" 
                                         AutoPostBack="True"     DataValueField="sid"  >
                                        </asp:DropDownList>
									    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
									</div><br />
                                    <label class="form-label ">Select City</label>
									<div class="form-group">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"
                                         AutoPostBack="True"    DataSourceID="SqlDataSource2" DataTextField="cname" 
                                            DataValueField="cname" >
                                        </asp:DropDownList>
								       
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [City_mstr] where ([sid] = @sid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="sid" 
                                                    PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
								       </div>
                <div class="section-wrapper">
                    <div class="cart-top">
                    <asp:Repeater ID="Repeater1"  runat="server" DataSourceID="SqlDataSource3" >
                    <HeaderTemplate>
                             <table>
                            <thead>
                                <tr>
                                    <th class="cat-product">CENTRE NAME</th>
                                     <th class="cat-product">TYPE </th>
                                    <th class="cat-product">VACCINE NAME</th>                                     
                                    <th class="cat-price">ADDRESS</th>
                                    <th class="cat-quantity">ZONE</th>
                                    <th class="cat-toprice">PRICE</th>
                                     <th class="cat-toprice">APPLICABLE AGE</th>
                                    <th class="cat-edit">View</th>
                                    <th class="cat-edit">BOOK NOW</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                                      <tr>
                                    <td class="product-item cat-product">
                                        
                                        
                                            <a href="#"><%#Eval("cname") %></a>
                                        
                                    </td>
                                    <td class="cat-price"><%#Eval("type") %></td>
                                    <td class="cat-price"><%#Eval("vname") %></td>
                                    <td class="cat-price"><%#Eval("address") %></td>
                                    <td class="cat-quantity"><%#Eval("Zone") %></td>
                                    <td class="cat-toprice"><%#Eval("price") %></td>
                                    <td class="cat-toprice">ABOVE <%#Eval("age") %></td>
                                    <td class="cat-edit">
                                        <a href="viewhosp.aspx?vid=<%#Eval("vid") %>&price=<%#Eval("price") %>&zone=<%#Eval("zone") %>&add=<%#Eval("address") %>&cname=<%#Eval("cname") %>&hname=<%#Eval("hname") %>&phno=<%#Eval("phno") %>" class=" btn btn-icon btn-pills btn-soft-danger uil uil-eye"></a>
                                        <%--<a href="Viral.aspx?vid=<%#Eval("vid") %>&hname=<%#Eval("hname") %>"" class="btn btn-icon btn-pills btn-soft-danger" data-bs-toggle="modal" data-bs-target="#viewdetail"><i class="uil uil-eye"></i></a>--%>

                                      
                  
                                    </td>
                                         
                                    <td><a href="VBook.aspx?vid=<%#Eval("vid") %>&price=<%#Eval("price") %>&zone=<%#Eval("zone") %>&add=<%#Eval("address") %>&cname=<%#Eval("cname") %>&hname=<%#Eval("hname") %>&phno=<%#Eval("phno") %>&vname=<%#Eval("vname") %>&aage=<%#Eval("age")%>" class="btn btn-danger"> BOOK NOW</a></td>
                                </tr>
                                 
                    </ItemTemplate>

                    <FooterTemplate>
                            </tbody>
                        </table>
                        </FooterTemplate>

                        </asp:Repeater>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT * FROM [Vcentre_mstr] WHERE ([city] = @city)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="state" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="city" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    
                        
                      
                    </ContentTemplate>
                                                </asp:UpdatePanel>
                        
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Shop Cart Page Section ending here -->
		
		
		<!-- scrollToTop start here -->
		<a href="#" class="scrollToTop"><i class="icofont-swoosh-up"></i><span class="pluse_1"></span><span class="pluse_2"></span></a>
		<!-- scrollToTop ending here -->

        </form>

</asp:Content>

