<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="Tab_outbreak.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
       
       <br /><br />
        <h2 class="display-2 text-center text-danger">COVID OUTBREAK</h2>

        <!-- Shop Cart Page Section start here -->		
        
        <div class="shop-cart padding-tb">
            <div class="container">
                <div class="section-wrapper">
                    <div class="cart-top">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
                             >
                    <HeaderTemplate>
                             <table>
                            <thead>
                                <tr>
                                    <th class="cat-product">STATE</th>
                                     <th class="cat-product">TOTAL CASES</th>
                                    <th class="cat-product">TOTAL RECOVERED</th>                                     
                                    <th class="cat-price">TOTAL DEATH</th>
                                    <th class="cat-quantity">TOTAL ACTIVE</th>  
                                    <th class="cat-quantity">TOTAL NEGATIVE</th>                                    
                                    
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                                      <tr>
                                    <td class="product-item cat-product">
                                        
                                        
                                            <a ><%#Eval("sname") %></a>
                                        
                                    </td>
                                    <td class="cat-price"><%#Eval("total_case") %></td>
                                    <td class="cat-price"><%#Eval("total_recover") %></td>                                    
                                    <td class="cat-quantity"><%#Eval("total_death") %></td>
                                    <td class="cat-toprice"><%#Eval("total_active") %></td>
                                    <td class="cat-toprice"><%#Eval("total_neg") %></td>
                                    
                                    
                                    
                                </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                    
                       
                              
                             
                            </tbody>
                        </table>
                        </FooterTemplate>
                        </asp:Repeater>
                    
                                            
                        
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [total_state]"></asp:SqlDataSource>
                    
                                            
                        
                        
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

