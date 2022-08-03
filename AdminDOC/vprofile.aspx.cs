using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminDOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, img, fname;
    SqlDataReader dr;
    int tid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            txtemail.ReadOnly = true;
            txtname.ReadOnly = true;
            img = Session["pic"].ToString();
            ViewState["fname"] = img;
            imgd.ImageUrl = "~/aimages/" + ViewState["fname"];
            txtname.Text = Session["Aname"].ToString();
            txtemail.Text = Session["mail"].ToString();
        }
       
    }
}