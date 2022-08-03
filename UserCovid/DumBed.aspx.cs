using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status;
    protected void Page_Load(object sender, EventArgs e)
    {             
        cn.Open();
        qry = "select * from Bed_Book where pname='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status = Convert.ToInt32(dr["status"].ToString());
            if (status == 0)
            {
                Response.Redirect("BBookPen.aspx");
            }
            else
            {
                Response.Redirect("BBookDone.aspx");
            }
        }
        cn.Close();

    }
}