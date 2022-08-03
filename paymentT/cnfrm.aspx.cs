using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class paymentT_cnfrm : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,method;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpname.Text = Application["uname"].ToString();
        lblemail.Text = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Tpaid where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblhname.Text = dr["hname"].ToString();
            lblpname.Text = dr["pname"].ToString();
            lblbldgrp.Text = dr["bldgrp"].ToString();
            lbltamt.Text = dr["tamt"].ToString();
            lblpdate.Text = dr["pdate"].ToString();
            method = dr["method"].ToString();
        }
        cn.Close();
    }
protected void  btn_Sub_Click(object sender, EventArgs e)
{
      if(method == "PAYTM")
        {
            Response.Redirect("../PaymentT/PaytmT.aspx");
        }
        else
        {
            Response.Redirect("../PaymentT/Ppen.aspx");
        }
}

      
    protected void  Button1_Click(object sender, EventArgs e)
{
    
    cn.Open();
    qry = "delete from Test_request where name='" + lblpname.Text + "' and hospital='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
    cmd = new SqlCommand(qry, cn);
    cmd.ExecuteNonQuery();
    cn.Close();
    cn.Open();
    qry = "delete from Tpaid where pname='" + lblpname.Text + "' and hname='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
    cmd = new SqlCommand(qry, cn);
    cmd.ExecuteNonQuery();
    cn.Close();
    Response.Redirect("../UserCovid/adclogin/Test_Request.aspx");
}
}
