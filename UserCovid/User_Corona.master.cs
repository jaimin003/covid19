using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserCovid_User_Corona : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
          
        }
        catch (Exception ex)
        {
            Response.Redirect("../adclogin/PLogin.aspx");
        }
    }
}
