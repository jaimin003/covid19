using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class PaymentA_PpenA : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status1;
    string pname1, email1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }    
    protected void btn_refresh_Click1(object sender, EventArgs e)
    {
        Response.Redirect("../UserCovid/Uhome.aspx");
    }
}
