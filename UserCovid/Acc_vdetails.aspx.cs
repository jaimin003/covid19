﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;

public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status1, idno1, age1;
    string pname1, gen1, idname1, vname1;
    DateTime date1,date2 = new DateTime();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Fdose where pname='" + Application["uname"] + "' and email='"+ Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            status1 = Convert.ToInt32(dr["status"]);
            if(status1 == 1)
            {
                lblpname.Text = dr["pname"].ToString();
                lblgen.Text = dr["gender"].ToString();
                lblidname.Text = dr["idname"].ToString();
                lblage.Text = dr["age"].ToString();
                lblvname.Text = dr["vname"].ToString();
                lblidno.Text = dr["idno"].ToString();
                date1 = Convert.ToDateTime(dr["date"]);           
                date2 = System.DateTime.Today;
                System.TimeSpan diff = date2.Subtract(date1);
                System.TimeSpan diff1 = date2 - date1;
                int dd = Convert.ToInt32((date2 - date1).TotalDays);
                int dd1 = 90;
                int lday = dd1 - dd;
                lblday.Text = lday.ToString();
                if (dd >= dd1)
                {
                    Response.Redirect("Vaccineinfo.aspx");
                }
            }
        }
        cn.Close();
     
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("before30_msg.aspx");
    }
}