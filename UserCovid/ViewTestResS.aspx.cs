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
    string qry, pname; 
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        pname = Application["uname"].ToString();
        qry = "select * from Tst_Result where name ='" + pname + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblpname.Text = dr["name"].ToString();
            lblemail.Text = dr["email"].ToString();
            lblbld.Text = dr["bldgrp"].ToString();
            lblres.Text = dr["result"].ToString();
            lblhname.Text = dr["hospital"].ToString();
            lbldate.Text = dr["date"].ToString();
        }
        cn.Close();
    }
}