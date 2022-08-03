<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PpenA.aspx.cs" Inherits="PaymentA_PpenA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<title>Payment</title>
<head>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body style="color: #0000CC">
<form id="Form1" runat="server">
<h1 class="style2">Your Request For Appointment Has Been Sent.. 
    <asp:Button ID="btn_refresh" class="btn btn-primary" runat="server" 
        Text="Refresh" onclick="btn_refresh_Click1" />
    </h1>
    </form>
