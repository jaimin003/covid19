using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Hospital_mstr where name='" + Session["Hname"] + "'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            txthname.Text = dr["name"].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hospital_Home.aspx");
    }
}
 


        
