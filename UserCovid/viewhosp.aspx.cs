using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry,hname;    
    protected void Page_Load(object sender, EventArgs e)
    {
        hname = Request.QueryString.Get("hname");
        cn.Open();
        qry = "select * from Hospital_mstr where name ='" + hname + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblhname.Text = dr["name"].ToString();
            lbladd.Text = dr["address"].ToString();
            lblcon.Text = dr["phno"].ToString();
            lblemail.Text = dr["mail"].ToString();
            lblstate.Text = dr["state"].ToString();
            lblcity.Text = dr["city"].ToString();
            lblzone.Text = dr["zone"].ToString();
            lbltype.Text = dr["type"].ToString();
        }
        cn.Close();

    }
}

         