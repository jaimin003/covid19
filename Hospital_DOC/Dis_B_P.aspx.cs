using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int pid;
    string pname;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        pid = Convert.ToInt32(Request.QueryString.Get("pid"));
        lblpname.Text = Request.QueryString.Get("pname1");
        //cn.Open();
        //qry = "select * from Discharge_P where pid='" + pid + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();            
        //    lblpname.Text = dr["pname"].ToString();            
        //}
        //cn.Close();
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("dummy_Recover.aspx?flag=" + 1 + "&pid=" + pid);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dummy_Death.aspx?flag="+ 1 + "&pid=" + pid);
    }
} 


