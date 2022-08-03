using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class PaymentA_PaytmF : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int id,fees1;
    string cmnt1, hname1, pname1, email1, dname1, desg1,phno1;
    protected void Page_Load(object sender, EventArgs e)
    {
        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Appointment_mstr where pname='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            cmnt1 = dr["comment"].ToString();
            hname1 = dr["hname"].ToString();
            dname1 = dr["dname"].ToString();
            desg1 = dr["desg"].ToString();
            phno1 = dr["phno"].ToString();
            fees1 = Convert.ToInt32(dr["fees"]);
            id = Convert.ToInt32(dr["pid"]);
        }
        lblp.Text = fees1.ToString();
        txtfees.Text = fees1.ToString();

    }
    protected void btn_paytm_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "insert into Apaid values('" + id + "','" + pname1 + "','" + hname1 + "','" + dname1 + "','" + desg1 + "','" + email1 + "','" + phno1 + "','" + cmnt1 + "','" + fees1 + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','PAYTM','1')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
      
        Response.Redirect("cnfrm.aspx");
    }
}



