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
    string qry,hname;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_bbill_Click(object sender, EventArgs e)
    {
        
         cn.Open();
        qry = "select * from Uregister_mstr where name ='" + Session["uname"] + "' and email='"+Session["umail"]+"'";
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

         cn.Open();
        qry = "select * from PAdmit_mstr where pname ='" + Session["uname"] + "' and status = 1 and email='"+Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            hname = dr["hname"].ToString();
            cn.Close();
            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + hname + "' and type='Private'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("ViewBbill.aspx");
            }
            else
            {
                Response.Redirect("ViewBbills.aspx");
            }
            cn.Close();
        }
        else
        {
            Response.Redirect("BedBook.aspx");
        }
    }
}