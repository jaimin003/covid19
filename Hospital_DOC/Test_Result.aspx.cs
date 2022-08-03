using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    //SqlCommand cmd = new SqlCommand();
    //string qry;
    //SqlDataReader dr;
    //int id;
    //string name, labo, bld, res,mail;
    protected void Page_Load(object sender, EventArgs e)
    {

        //id = Convert.ToInt32(Request.QueryString.Get("tid"));
        //cn.Open();
        //qry = "update Test_request set status = 1 where id=" + id;
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();

        
        //cn.Close();

        //cn.Open();
        
        //name = Request.QueryString.Get("name");
        //mail = Request.QueryString.Get("mail");
        //labo = Session["Lname"].ToString();
        //res = Request.QueryString.Get("result");
        //bld = Request.QueryString.Get("bld");

        //qry = "insert into Tst_Result values('" + id + "','" + name + "','" + mail + "','" + bld + "','"+res+"','" + labo + "')";
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();
        //cn.Close();
       
        

    }
}