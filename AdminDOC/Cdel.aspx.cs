using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminDOC_Default3 : System.Web.UI.Page
{
    
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int tid;
    protected void Page_Load(object sender, EventArgs e)
    {
        tid = Convert.ToInt32(Request.QueryString.Get("cid"));
        cn.Open();
        qry = "delete from City_mstr where cid='" + tid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("City.aspx");
    }
}


