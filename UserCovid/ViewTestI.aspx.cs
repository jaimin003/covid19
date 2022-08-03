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
        pname = Session["uname"].ToString();
        qry = "select * from Tpaid where pname ='" + pname + "' and status='1'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblpname.Text = dr["pname"].ToString();
            lblemail.Text = dr["email"].ToString();
            lblbld.Text = dr["bldgrp"].ToString();
            lblamt.Text = dr["tamt"].ToString();
            lblhname.Text = dr["hname"].ToString();
            lbldate.Text = dr["pdate"].ToString();
        }
        cn.Close();
    }
}