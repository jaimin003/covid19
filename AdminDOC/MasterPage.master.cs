using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDOC_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
         try
        {
            Label1.Text = Session["Aname"].ToString();
            Image1.ImageUrl = "~/aimages/" + Session["pic"].ToString();
            Image2.ImageUrl = "~/aimages/" + Session["pic"].ToString();
         
        }
         catch (Exception ex)
         {
             Response.Redirect("Alogin.aspx");
         }
    }
}
