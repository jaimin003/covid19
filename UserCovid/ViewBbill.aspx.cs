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
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from PAdmit_mstr where pname ='" + Session["uname"] + "' and status = 1 and email='"+Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblino.Text = dr["pid"].ToString();
            lblemail.Text = dr["email"].ToString();
            lblphno.Text = dr["phno"].ToString();
            lblage.Text = dr["age"].ToString();
            lblpname.Text = dr["pname"].ToString();
            lblgen.Text = dr["gender"].ToString();
            lbladd.Text = dr["address"].ToString();
            lblidno.Text = dr["adno"].ToString();
            lbldate.Text = dr["ddate"].ToString();
            lblhname.Text = dr["hname"].ToString();
            lblnod.Text = dr["anod"].ToString();
            lbltamt.Text = dr["amt"].ToString();
        }
       
        cn.Close();    
    }
}       
