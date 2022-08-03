using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry, uname,uemail,hname;
    int status, flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        


        cn.Open();
        qry = "select * from Uregister_mstr where name ='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {
            Response.Redirect("../UserCovid/adclogin/Plogin.aspx");
        }
        cn.Close();
           uname = Session["uname"].ToString();
        uemail = Session["umail"].ToString();
        cn.Open();
        qry = "select * from Apaid where pname ='" + uname + "' and status = 1 and email='"+uemail+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            hname = dr["hname"].ToString();
        }
        cn.Close();

        cn.Open();
        qry = "select * from Appointment_mstr where status = 0 and pname='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Response.Redirect("../UserCovid/Appointmentpen.aspx");
        }
        cn.Close();

        cn.Open();
        qry = "select * from Hospital_mstr where type='Private'  and name ='" + hname + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            flag = 1;
        }
        cn.Close();
        
            if (flag == 1)
            {
                Response.Redirect("App_invoice.aspx");
            }
            else
            {
                Response.Redirect("App_invoices.aspx");
            }        
    }
}