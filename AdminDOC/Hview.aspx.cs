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
        tid = Convert.ToInt32(Request.QueryString.Get("id"));
        cn.Open();
            qry = "select * from Hospital_mstr where id='" + tid + "'"; 
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtname.Text = dr["name"].ToString();
                txtemail.Text = dr["mail"].ToString();
                txtstate.Text = dr["state"].ToString();
                txtcity.Text = dr["city"].ToString();
                txtzone.Text = dr["zone"].ToString();
                txttype.Text = dr["type"].ToString();
                txtphno.Text = dr["phno"].ToString();
                txtadd.Text = dr["address"].ToString();

            }
            cn.Close();
    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hospital_list.aspx");
    }
}