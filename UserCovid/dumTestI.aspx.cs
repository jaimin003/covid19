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
    string qry, hname;
    int status, flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Uregister_mstr where name ='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status = Convert.ToInt32(dr["status"]);
        }
        else
        {
            Response.Redirect("../Usercovid/adclogin/PLogin.aspx");
        }
        cn.Close();
        if (status == 1)
        {
            cn.Open();
            qry = "select * from Tpaid where pname ='" + Session["uname"] + "' and email='" + Session["umail"] + "' and status='1'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                hname = dr["hname"].ToString();
            }
            else
            {
                Response.Redirect("../UserCovid/adclogin/Test_Request.aspx");
            }
            cn.Close();
            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + hname + "' and type='Private'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("ViewTestI.aspx");
            }
            else
            {
                Response.Redirect("ViewTestIS.aspx");
            }
        }

        cn.Close();
    }
}