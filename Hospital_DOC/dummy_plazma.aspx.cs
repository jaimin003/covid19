using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    string qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string act,dname,demail,bldgrp,cr;
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id =Convert.ToInt32(Request.QueryString.Get("pid"));
        dname = Request.QueryString.Get("dname").ToString();
        demail = Request.QueryString.Get("demail").ToString();
        bldgrp = Request.QueryString.Get("bld").ToString();
        act=Request.QueryString.Get("action").ToString();

        if (act == "Accept")
        {
            cn.Open();
            qry = "update plazma_mstr set status = 1 where pid='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            MailMessage mail = new MailMessage();
            string mailid = demail;
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "PUBLIC HEALTH CARE";
            //string Body = "YOUR OTP NUMBER IS : " + k.ToString();
            mail.Body = CreateBody();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("publichealthcare2000@gmail.com", "rajjaimin2000");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            cn.Close();
         
            Response.Redirect("Plazma_donors.aspx");
        }
        else
        {
            cn.Open();
            qry = "delete  from plazma_mstr where pid='"+id+"'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            MailMessage mail = new MailMessage();
            string mailid = demail;
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "PUBLIC HEALTH CARE";
            //string Body = "YOUR OTP NUMBER IS : " + k.ToString();
            mail.Body = CreateBody();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("publichealthcare2000@gmail.com", "rajjaimin2000");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            cn.Close();
         
            Response.Redirect("Plazma_donors_list.aspx");
        }     
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/donate/donate.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("Uname",dname); //replacing Parameters     

        body = body.Replace("Hname",Session["hname"].ToString());

        return body;

    }
}