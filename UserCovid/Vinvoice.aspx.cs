using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserCovid_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString.Get("hname");
        Label2.Text = Request.QueryString.Get("cname");
        Label3.Text = Request.QueryString.Get("add");
        Label4.Text = Request.QueryString.Get("phno");
        Label5.Text = Request.QueryString.Get("price");
        Label6.Text = Request.QueryString.Get("add");
        Label7.Text = Request.QueryString.Get("phno");
    }
}