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
    int tid,sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        tid = Convert.ToInt32(Request.QueryString.Get("cid"));
        cn.Open();
        qry = "select * from City_mstr where cid='" + tid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            sid = Convert.ToInt32(dr["sid"]);
            txtcname.Text = dr["cname"].ToString();
        }
        cn.Close();
        cn.Open();
        qry = "select * from State_mstr where sid='" + sid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();            
            txtsname.Text = dr["sname"].ToString();
        }
        cn.Close();
    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        Response.Redirect("City.aspx");
    }
}
