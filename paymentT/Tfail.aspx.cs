using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class paymentT_Tfail : System.Web.UI.Page
{
         SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,method,pname1;
    SqlDataReader dr;    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_refresh_Click(object sender, EventArgs e)
    {        
        pname1 = Application["uname"].ToString();             
        cn.Open();
        qry = "delete from Test_request where name='" + pname1 + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "delete from Tpaid where pname='" + pname1 + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();        
        Response.Redirect("../UserCovid/adclogin/Test_Request.aspx");
    }
}

