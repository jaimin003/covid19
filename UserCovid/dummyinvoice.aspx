<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="dummyinvoice.aspx.cs" Inherits="UserCovid_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




  <div <%--class="section-wrapper wow fadeInUp" data-wow-delay="0.001s"--%>>
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-sm-8 col-12">
                               
                           <br />  
                              <br />  
                                 <br />  
                                    <br />  
                            <form id="Form2" runat="server">          
                                    <asp:Label ID="Label1" runat="server" Text="SELECT DOSE TO GET INVOICE"></asp:Label>  
                                       <br />  
                                          <br />  
                            <asp:DropDownList ID="ddldose" class="form-control"  runat="server">
                            
                            
                                <asp:ListItem Value="1">1st DOSE</asp:ListItem>
                                <asp:ListItem Value="2">2nd DOSE</asp:ListItem>
                            
                            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Dose First" 
                                       ControlToValidate="ddldose" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <br />  
                                           <asp:Button ID="Button2" runat="server" Text="View Invoice" class="lab-btn lab-btn text-white col-sm-4 offset-4"
            onclick="Button2_Click"/>
                                 
                                                   <br />  
                                                      <br />                                                       
                           </form>
                        </div>
                       
                    </div>
                </div>
        

    


</asp:Content>

