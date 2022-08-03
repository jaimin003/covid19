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
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int totb, totob,fb,flag=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Addbed_mstr where hname='"+Session["hname"]+"'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            flag = 1;
            
            Response.Redirect("BedList.aspx?flag=" + flag);
        }
        cn.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Addbed_mstr values('" + txttotb.Text + "','" + txtrent.Text + "','0','" + Session["Hname"] + "','" + Session["phno"] + "'," + '0' + ",'" + Session["city"] + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "select * from Addbed_mstr where hname ='" + Session["Hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            //Session["Hname"] = dr["name"].ToString();
            totb = Convert.ToInt32(dr["totbed"].ToString());
            //totob = Convert.ToInt32(dr["occupied"].ToString());
        }
        cn.Close();
        cn.Open();
        fb = totb - totob;
        qry = "update Addbed_mstr set freebed='" + fb + "' where hname='" + Session["Hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("BedList.aspx");
    }  
}

    
