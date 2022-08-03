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
    string qry, uname, uemail;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn.Close();
        uname = Session["uname"].ToString();
        uemail = Session["umail"].ToString();
        cn.Open();
        qry = "select * from Apaid where pname ='" + uname + "' and status = 1 and email='" + uemail + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblemail.Text = dr["email"].ToString();
            lblphno.Text = dr["phno"].ToString();
            lblpname.Text = dr["pname"].ToString();
            lbldname.Text = dr["dname"].ToString();
            lbldesg.Text = dr["desg"].ToString();
            lbltamt.Text = dr["fees"].ToString();
            lblpdate.Text = dr["pdate"].ToString();
            lblhname.Text = dr["hname"].ToString();
        }
        else
        {
            Response.Redirect("../UserDoc/Appointment.aspx");
        }
        cn.Close();    
    }
}