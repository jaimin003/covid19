using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Convert.ToInt32(Request.QueryString.Get("pid"));                
        cn.Open();
        qry = "delete from Appointment_mstr where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "delete from Apaid where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Doc_AP.aspx");
    }
}
