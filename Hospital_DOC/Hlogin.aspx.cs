using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Hospital_DOC_Llogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int status;
        cn.Open();
        qry = "select * from Hospital_mstr where mail ='" + txtmail.Text + "' and password='" + txtpass.Text + "' ";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            
          

            Session["tdate"] = System.DateTime.Now;
            Session["hname"] = dr["name"].ToString();
            Session["phno"] = dr["phno"].ToString();
            Session["mail"] = dr["mail"].ToString();
            Session["type"] = dr["type"].ToString();
            Session["city"] = dr["city"].ToString();
            status = Convert.ToInt32(dr["status"].ToString());
            if (status == 1)
            {
                Response.Redirect("Temp_exp.aspx");
             
            }
            else
            {
                Response.Write("<script lang='javascript'>alert('Hospital is Not Verified Yet')</script>");
            }
        }
        cn.Close();
    }
}