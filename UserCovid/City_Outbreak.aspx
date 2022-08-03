<%@ Page Title="" Language="C#" MasterPageFile="~/UserCovid/User_Corona.master" AutoEventWireup="true" CodeFile="City_Outbreak.aspx.cs" Inherits="UserCovid_Default" %>


<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="display-3 text-center text-danger">CITY OUTBREAK</h2><br /><br />
<div class="row">

<div class="col-sm-4 offset-1">
<h2>TOTAL CASES CITY WISE</h2>
    <asp:Chart ID="Chart1" runat="server" Height="325px" Width="769px" 
       >
        <Series>
            <asp:Series Name="Series1" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </div>

    <div class="col-sm-4 offset-2">
    <h2>TOTAL RECOVERY RATE CITY WISE </h2>
            <asp:Chart ID="Chart2" runat="server" Height="325px" Width="769px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </div>
</div>
<br /><br />

<div class="row">
<div class="col-sm-4 offset-1">
<h2>TOTAL DEATH  RATE CITY WISE </h2>
    <asp:Chart ID="Chart3" runat="server" Width="549px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</div>

<div class="col-sm-4  offset-2">
<h2>TOTAL ACTIVE CASE CITY WISE </h2>
    <asp:Chart ID="Chart4" runat="server" Height="284px" Width="449px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</div>
</div><br /><br />
<div class="row">
<div class="col-sm-4  offset-1">
<h2>TOTAL NEGATIVE CASES CITY WISE </h2>
 <asp:Chart ID="Chart5" runat="server" Height="284px" Width="449px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</div>
</asp:Content>

