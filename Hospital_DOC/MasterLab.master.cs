using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web;
using System.Web.UI.WebControls;

public partial class Hospital_DOC_MasterLab : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["Hname"].ToString();
            Label2.Text = Session["Hname"].ToString();
            Label3.Text = Session["Hname"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("Hlogin.aspx");
        }
    }
}
