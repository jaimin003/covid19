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
    string qry;
    SqlDataReader dr;
    int tid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        tid = Convert.ToInt32(Request.QueryString.Get("sid"));
            cn.Open();
            qry = "select * from State_mstr where sid='" + tid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtsname.Text = dr["sname"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        tid = Convert.ToInt32(Request.QueryString.Get("sid"));
        cn.Open();
        qry = "update State_mstr set sname='" + txtsname.Text + "' where sid='" + tid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("State.aspx");
    }
}
