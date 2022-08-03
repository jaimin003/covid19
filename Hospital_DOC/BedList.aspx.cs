using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int  flag1;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag1 =Convert.ToInt32( Request.QueryString.Get("flag"));
        if (flag1 == 1)
        {
            Response.Write("<script lang='javascript'>alert('You Cannot Add Bed Again You Have Already Added Beds')</script>");
        }
    }
}