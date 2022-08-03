using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.IO;
public partial class Hospital_DOC_Forgot_password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,hname,pass;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Hospital_mstr where mail='" + txtmail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
             pass = dr["password"].ToString();
             hname = dr["name"].ToString();
            MailMessage mail = new MailMessage();
            string mailid = txtmail.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "FORGOT PASSWORD";
            mail.Body = CBody();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("publichealthcare2000@gmail.com", "rajjaimin2000");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);

            Response.Redirect("Hlogin.aspx");

        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Invalid Email')</script>");
        }
        cn.Close();
    }
    private string CBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/forgot/forgot.html")))
        {
            body = reader.ReadToEnd();
        }

        body = body.Replace("Uname", hname);
        body = body.Replace("Ans", pass);
        return body;

    }
}