﻿using System;
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
    string qry,cname;
    int status,flag=0,dose;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

          dose = Convert.ToInt32(ddldose.SelectedItem.Value);

          if (dose == 1)
          {

              Session["dtemp"] = dose;
              cn.Open();
              qry = "select * from Fdose where pname ='" + Session["uname"] + "'";
              cmd = new SqlCommand(qry, cn);
              dr = cmd.ExecuteReader();
              if (dr.HasRows)
              {
                  dr.Read();
                  status = Convert.ToInt32(dr["status"]);
                  cname = dr["cname"].ToString();
              }
              else
              {
                  Response.Redirect("Vaccineinfo.aspx");
              }
              cn.Close();
              cn.Open();
              qry = "select * from Vcentre_mstr where type='Private'  and cname ='" + cname + "'";
              cmd = new SqlCommand(qry, cn);
              dr = cmd.ExecuteReader();
              if (dr.HasRows)
              {
                  dr.Read();
                  flag = 1;
              }
              cn.Close();
              if (status == 1)
              {
                  if (flag == 1)
                  {
                      Response.Redirect("viewbill.aspx");
                  }
                  else
                  {
                      Response.Redirect("viewbillss.aspx");
                  }
              }
              else
              {
                  Response.Redirect("Vaccineinfo.aspx");
              }
          }
          else if (dose == 2)
          {

              Session["dtemp"] = dose;
              cn.Open();
              qry = "select * from VaccineBook_mstr where pname ='" + Session["uname"] + "'";
              cmd = new SqlCommand(qry, cn);
              dr = cmd.ExecuteReader();
              if (dr.HasRows)
              {
                  dr.Read();
                  status = Convert.ToInt32(dr["status"]);
                  cname = dr["cname"].ToString();

              }
              else
              {
                  Response.Redirect("Vaccineinfo.aspx");
              }
              cn.Close();
              cn.Open();
              qry = "select * from Vcentre_mstr where type='Private'  and cname ='" + cname + "'";
              cmd = new SqlCommand(qry, cn);
              dr = cmd.ExecuteReader();
              if (dr.HasRows)
              {
                  dr.Read();
                  flag = 1;
              }
              cn.Close();
              if (status == 2)
              {
                  if (flag == 1)
                  {
                      Response.Redirect("viewbill.aspx");
                  }
                  else
                  {
                      Response.Redirect("viewbillss.aspx");
                  }
              }
              else
              {
                  Response.Redirect("Vaccineinfo.aspx");
              }
          }
          else
          {
              Response.Redirect("Vaccineinfo.aspx");
          }

        ////cn.Open();
        ////qry = "select * from VaccineBook_mstr where pname ='" + Session["uname"] + "' ";
        ////cmd = new SqlCommand(qry, cn);
        ////dr = cmd.ExecuteReader();
        ////if (dr.HasRows)
        ////{
        ////    dr.Read();
        ////    status = Convert.ToInt32(dr["status"]);
        ////    cname = dr["cname"].ToString();
        ////}            
        ////else
        ////{
        ////    Response.Redirect("VBook.aspx");
        ////}
        ////cn.Close();
        ////cn.Open();
        ////qry = "select * from Vcentre_mstr where type='Private'  and cname ='" + cname + "'";
        ////cmd = new SqlCommand(qry, cn);
        ////dr = cmd.ExecuteReader();
        ////if (dr.HasRows)
        ////{
        ////    dr.Read();
        ////    flag = 1;
        ////}
        ////cn.Close();
        ////if (status == 1)
        ////{
        ////    if (flag == 1)
        ////    {
        ////        Response.Redirect("viewbill.aspx"); 
        ////    }
        ////    else
        ////    {
        ////        Response.Redirect("viewbillss.aspx"); 
        ////    }            
        ////}
        ////else if(status==2)
        ////{
        ////    if (flag == 1)
        ////    {
        ////        Response.Redirect("viewbill.aspx");
        ////    }
        ////    else
        ////    {
        ////        Response.Redirect("viewbillss.aspx");
        ////    }
        ////}
        ////else
        ////{
        ////    Response.Redirect("VBook.aspx");
        ////}
        
    }
}