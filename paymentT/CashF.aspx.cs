using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class paymentT_CashF : System.Web.UI.Page
{
     SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int id;
    string hname1, pname1, email1, bldgrp1,tamt;
    protected void Page_Load(object sender, EventArgs e)
    {
            
        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Test_request where name='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            hname1 = dr["hospital"].ToString();           
            email1 = dr["email"].ToString();
            bldgrp1 = dr["bldgrp"].ToString();
            tamt = dr["tamt"].ToString();          
            id = Convert.ToInt32(dr["id"]);            
        }
        lblp.Text = tamt;
        txttamt.Text = tamt;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "insert into Tpaid values('" + id + "','" + pname1 + "','" + email1 + "','" + bldgrp1 + "','" + hname1 + "','" + Convert.ToInt32(tamt) + "','CASH','" + DateTime.Now.ToString("dd-MM-yyyy") + "','0')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("cnfrm.aspx");
    }
}
