using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class AdminDOC_Assets_ALogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Admin_Register where email='" + txtmail.Text + "' and password='" + txtpass.Text + "'";
        //c.s_sel(qry);
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["Aname"] = dr["name"].ToString();
            Session["pic"] = dr["aimg"].ToString();
            Session["mail"] = dr["email"].ToString();
            Response.Redirect("Ahome.aspx");
        }
        else
        {
            Response.Redirect("Asignup.aspx");
        }

        cn.Close();
    }
}