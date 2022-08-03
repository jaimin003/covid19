<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="BedInfo.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <form id="form1" runat="server">
       

        <h2 class="display-2 text-center text-danger">BED INFORMATION</h2>
        <!-- Shop Cart Page Section start here -->		            
        <div class="shop-cart padding-tb">
            <div class="container">
                 <label class="form-label ">Select State</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" class="form-control" DataTextField="sname" 
                                            DataValueField="sid" AutoPostBack="True" >
                                        </asp:DropDownList>
									    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [State_mstr]"></asp:SqlDataSource>
									</div><br />
                                    <label class="form-label ">Select City</label>
									<div class="form-group">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" 
                                            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="cname" 
                                            DataValueField="cname" >
                                        </asp:DropDownList>
								       
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [City_mstr] WHERE ([sid] = @sid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="sid" 
                                                    PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
								       </div>
                <div class="section-wrapper">
                    <div class="cart-top">
                    <asp:Repeater ID="Repeater1" runat="server" 
                             DataSourceID="SqlDataSource3">
                    <HeaderTemplate>
                             <table>
                            <thead>
                                <tr>
                                    <th class="cat-product">HOSPITAL</th>
                                     <th class="cat-product">CONTACT</th>
                                    <th class="cat-product">TOTAL BED</th>                                     
                                    <th class="cat-price">OCCUPIED</th>
                                    <th class="cat-quantity">VACANT</th>  
                                    <th class="cat-quantity">RENT</th>                                    
                                    <th class="cat-edit">BOOK NOW</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                                      <tr>
                                    <td class="product-item cat-product">
                                        
                                        
                                            <a href="viewhosp.aspx?hname=<%#Eval("hname")%>"><%#Eval("hname") %></a>
                                        
                                    </td>
                                    <td class="cat-price"><%#Eval("phno") %></td>
                                    <td class="cat-price"><%#Eval("totbed") %></td>                                    
                                    <td class="cat-quantity"><%#Eval("occupied") %></td>
                                    <td class="cat-toprice"><%#Eval("freebed") %></td>
                                    <td class="cat-toprice"><%#Eval("rent") %></td>
                                    <td class="cat-edit"><a href="BedBook.aspx?hname=<%#Eval("hname")%>&rent=<%#Eval("rent") %>&freebed=<%#Eval("freebed") %>"" class="btn btn-danger"> BOOK NOW</a></td>    
                                    
                                    
                                </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                    
                       
                              
                             
                            </tbody>
                        </table>
                        </FooterTemplate>
                        </asp:Repeater>
                    
                                            
                        
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Addbed_mstr] WHERE ([city] = @city)">
                            <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="state" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="city" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    
                                            
                        
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

