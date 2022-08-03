using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDoc_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "../lab_service_img/"+Request.QueryString.Get("img");
         Label1.Text = Request.QueryString.Get("sname");
        Label2.Text = Request.QueryString.Get("des");
    }
}