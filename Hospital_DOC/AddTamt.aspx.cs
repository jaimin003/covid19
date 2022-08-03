using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry,hname1,type;
    int flag = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        hname1 = Session["hname"].ToString();

        cn.Open();
        qry = "select * from Test_amt where hname='"+hname1+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            flag = 1;

            Response.Redirect("CTestp.aspx?flag=" + flag);
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
    protected void btn_submit_Click(object sender, EventArgs e)
    {              
        cn.Open();
            qry = "insert into Test_amt values('" + hname1 + "','" + txttamt.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("CTestp.aspx");        
    }
}
 
 
       