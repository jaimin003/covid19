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
    SqlDataReader dr;
    string qry, hname1,type;
    protected void Page_Load(object sender, EventArgs e)
    {
        hname1 = Request.QueryString.Get("hname");
        cn.Open();
        qry = "Select * from Test_amt where hname='" + hname1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label1.Text = dr["tamt"].ToString();            
        }
        cn.Close();
        cn.Open();        
        qry = "Select * from Hospital_mstr where name='" + hname1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();            
            type = dr["type"].ToString();
        }
        cn.Close();
        if (type == "Government")
        {
            txttamt.Text = "0";
            txttamt.ReadOnly = true;
        } 
    }    
    protected void btn_update_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update Test_amt set tamt='" + txttamt.Text + "' where hname='" + hname1 + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("CTestp.aspx");
    }
}
    