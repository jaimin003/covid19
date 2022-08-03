using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class PaymentB_cnfrm : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, method;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpname.Text = Application["uname"].ToString();
        lblemail.Text = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Bpaid where pname='" + lblpname.Text + "' and email='"+ lblemail.Text+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblhname.Text = dr["hname"].ToString();
            lblpname.Text = dr["pname"].ToString();
            lblphno.Text = dr["phno"].ToString();
            lbltday.Text = dr["tday"].ToString();
            lbltamt.Text = dr["tamt"].ToString();
            lblpdate.Text = dr["pdate"].ToString();
            method = dr["method"].ToString();
        }
    }
    protected void btn_Sub_Click(object sender, EventArgs e)
    {
        if (method == "PAYTM")
        {
            Response.Redirect("PaytmB.aspx");
        }
        else
        {
            Response.Redirect("PpenB.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "delete from Bpaid where pname='" + lblpname.Text + "' and email='"+lblemail.Text+ "' and  hname='" + lblhname.Text + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("../UserCovid/Uhome.aspx");
    }
}
