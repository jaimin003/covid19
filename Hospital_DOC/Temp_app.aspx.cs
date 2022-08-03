using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, email1, pname1;
    int tbid, s;
    SqlDataReader dr;
    DateTime date1, edate = new DateTime();
    protected void Page_Load(object sender, EventArgs e)
    {
         edate = System.DateTime.Today;
        cn.Open();
        qry = "select * from Appointment_mstr where status = 0 and hname='"+Session["hname"]+"'";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        s = ds1.Tables[0].Rows.Count;
        cn.Open();
        qry = "select * from Appointment_mstr  where status = 0 and hname='" + Session["hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            tbid = Convert.ToInt32(dr["pid"]);
        }
  
        for (int i = 1; i <= s; i++)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Appointment_mstr where status = 0 and pid='" + tbid + "' and hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                date1 = Convert.ToDateTime(dr["date"]);
                email1 = dr["email"].ToString();
                pname1 = dr["pname"].ToString();
                cn.Close();
                if (date1 < edate)
                {

                    cn.Open();
                    qry = "delete from Appointment_mstr where pid='" + tbid + "' and hname='" + Session["hname"] + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteReader();

                    cn.Close();

                    cn.Open();
                    qry = "delete from Apaid where pid='" + tbid + "' and hname='" + Session["hname"] + "' and pname='"+pname1+"'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteReader();
                    
                    //cn.Open();
                    //qry = "delete from Vpaid where bid='" + tbid + "'";
                    //cmd = new SqlCommand(qry, cn);
                    //cmd.ExecuteReader();
                    //cn.Close();
                    MailMessage mail = new MailMessage();
                    string mailid = email1;
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("publichealthcare2000@gmail.com");
                    mail.Subject = "REGARDING APPOINTMENT";
                    //string Body = "DEAR " + pname1 + ", YOUR APPOINTMENT SCHEDULED IS EXPIRED DUE TO YOUR ABSENCE.";
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
                    tbid++;
                    cn.Close();
                }
                else
                {
                    tbid++;
                }
            }
            else
            {
                tbid++;
                i--;
            }
            
        }
        cn.Close();
        Response.Redirect("Hhome.aspx");
        
    }

    private string CBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/exp/exp.html")))
        {

            body = reader.ReadToEnd();

        }
        body = body.Replace("Uname", pname1); //replacing Parameters
        return body;

    }

    
    
}