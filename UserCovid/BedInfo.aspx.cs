using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserCovid_Default : System.Web.UI.Page
{
    int flag1;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag1 =Convert.ToInt32( Request.QueryString.Get("flag"));
        if (flag1 == 1)
        {
            Response.Write("<script lang='javascript'>alert('Beds Not Available!!')</script>");
        }
    }
}