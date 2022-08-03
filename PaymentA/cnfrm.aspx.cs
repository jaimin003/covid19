using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class PaymentA_cnfrm : System.Web.UI.Page
{
    
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,method;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpname.Text = Session["uname"].ToString();
        lblemail.Text = Session["umail"].ToString();
        cn.Open();
        qry = "select * from Apaid where pname='" + lblpname.Text + "' and email='" +lblemail.Text+ "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblhname.Text = dr["hname"].ToString();
            lblpname.Text = dr["pname"].ToString();
            lbldname.Text = dr["dname"].ToString();
            lbldesg.Text = dr["desg"].ToString();
            lblfees.Text = dr["fees"].ToString();
            lblpdate.Text = dr["pdate"].ToString();
            method = dr["method"].ToString();
        }
        cn.Close();            
    }



    protected void btn_Sub_Click1(object sender, EventArgs e)
    {
        if (method == "PAYTM")
        {
            Response.Redirect("PaytmA.aspx");
        }
        else
        {
            Response.Redirect("PpenA.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "delete from Appointment_mstr where pname='" + lblpname.Text + "' and hname='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "delete from Apaid where pname='" + lblpname.Text + "' and  hname='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("../UserDoc/Appointment.aspx");
    }
}
