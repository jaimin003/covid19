using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag =Convert.ToInt32( Request.QueryString.Get("flag"));
        if (flag == 1)
        {
            Response.Write("<script lang='javascript'>alert('You Have Already Added Amount')</script>");
        }
    }
}