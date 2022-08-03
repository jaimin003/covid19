using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class PaymentB_PaytmF : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int pid, age1, tday1, tamt1;
    string hname1, pname1, email1, phno1;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn.Open();
        qry = "Select * from Uregister_mstr where name='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {
            Response.Redirect("../UserCovid/adclogin/PLogin.aspx");
        }
        cn.Close();

        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from PAdmit_mstr where pay= 'P' and status= '1' and pname='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            hname1 = dr["hname"].ToString();
            pname1 = dr["pname"].ToString();
            email1 = dr["email"].ToString();
            phno1 = dr["phno"].ToString();
            tamt1 = Convert.ToInt32(dr["amt"]);
            tday1 = Convert.ToInt32(dr["anod"]);
            pid = Convert.ToInt32(dr["pid"]);
            age1 = Convert.ToInt32(dr["age"]);
            lblp.Text = tamt1.ToString();
            txtfees.Text = tamt1.ToString();
        }
        else
        {
            Response.Redirect("../UserCovid/Youdonpay.aspx");
        }
    }
    protected void btn_paytm_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "insert into Bpaid values('" + pid + "','" + pname1 + "','" + email1 + "','" + phno1 + "','" + age1 + "','" + hname1 + "','" + tday1 + "','" + tamt1 + "','PAYTM','1','" + DateTime.Now.ToString("dd-MM-yyyy") + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close(); 
        cn.Open();
        qry = "update PAdmit_mstr set pay = 'D' where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("cnfrm.aspx");
    }
}