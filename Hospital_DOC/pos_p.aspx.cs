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
    string hname,email1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lblpname.Text = Request.QueryString.Get("pname").ToString();
       
        hname =Request.QueryString.Get("hname").ToString();
        cn.Open();
        qry = "select * from Tst_Result where name='" + lblpname.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            email1 = dr["email"].ToString();
        }
        cn.Close();
        cn.Open();
        qry = "insert into Discharge_p values('" + Convert.ToInt32(Session["pid"]) + "','" +lblpname.Text+"','"+hname+"','RECOVER','"+DateTime.Now.ToString("dd-MM-yyyy")+"')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "update  positive_c set status = 1 where pname='" + lblpname.Text + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("publichealthcare2000@gmail.com");
        string mailid = email1;
        mail.To.Add(mailid);
        mail.Subject = "DISCHARGE";
        //string Body = "YOU ARE " + action + " FROM OUR HOSPITAL STAY SAFE SPECIAL THANK YOU ... FROM " + hname + ".";
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
      
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/dis/dis.html")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("Uname", lblpname.Text); //replacing Parameters
        body = body.Replace("Date", System.DateTime.Today.ToString());
        body = body.Replace("Hname", Session["hname"].ToString());       
        return body;
    }
}