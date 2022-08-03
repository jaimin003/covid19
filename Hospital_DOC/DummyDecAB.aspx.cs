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
public partial class Hospital_DOC_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry, pname1, action, dname1, date1, email1;
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Convert.ToInt32(Request.QueryString.Get("pid"));
        cn.Open();
        qry = "select * from Appointment_mstr where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            email1 = dr["email"].ToString();
            pname1 = dr["pname"].ToString();
            action = "Rejected";
            date1 = dr["date"].ToString();
            dname1 = dr["dname"].ToString();
        }
        cn.Close();
        cn.Open();
        qry = "delete from Appointment_mstr where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        qry = "delete from Apaid where pid='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        MailMessage mail = new MailMessage();
        string mailid = email1;
        mail.To.Add(mailid);
        mail.From = new MailAddress("publichealthcare2000@gmail.com");
        mail.Subject = "REGARDING APPOINMENT";
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
    
        Response.Redirect("Doc_AB.aspx");
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/app/app.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("Uname", pname1); //replacing Parameters
        body = body.Replace("Action", action);
        body = body.Replace("Dname", dname1);
        body = body.Replace("Date", date1);
        return body;
    }
}