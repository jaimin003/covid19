using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int id,day,tamt;
    string action, hname;
    DateTime date1, date2 = new DateTime();
    int totbed, totfreeb, totoccbed;
    int  totoccbed1;
    int pid1;
    string pname1, hname1;
    protected void Page_Load(object sender, EventArgs e)
    {

      
        date1 = Convert.ToDateTime(Request.QueryString.Get("date"));
        date2 = System.DateTime.Today;
        System.TimeSpan diff = date2.Subtract(date1);
        System.TimeSpan diff1 = date2 - date1;
         day = Convert.ToInt32((date2 - date1).TotalDays);
        tamt  = day * Convert.ToInt32(Request.QueryString.Get("amt"));
        hname = Session["hname"].ToString();
        id = Convert.ToInt32(Request.QueryString.Get("pid"));
        action = Request.QueryString.Get("action");       
        if (action == "DISCHARGE")
        {
                    
               cn.Open();
            qry = "select * from Addbed_mstr where hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                totbed = Convert.ToInt32(dr["totbed"].ToString());
                totoccbed1 = Convert.ToInt32(dr["occupied"].ToString());
                totoccbed = totoccbed1 - 1;
                totfreeb = totbed - totoccbed;
            }
                cn.Close();                                                         
                    cn.Open();
                    qry = "update Addbed_mstr set totbed='" + totbed + "',occupied='" + totoccbed + "',freebed='" + totfreeb + "' where hname='" + Session["hname"] + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();                    
                    cn.Close();
            cn.Open();
            qry = "update PAdmit_mstr set status = 1,ddate='" + System.DateTime.Now + "',anod='" + day + "',amt='" + tamt + "' where pid='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            
            //cn.Open();
            //qry = "select * from PAdmit_mstr where status = 1";
            //cmd = new SqlCommand(qry, cn);
            //dr = cmd.ExecuteReader();
            //if(dr.HasRows)
            //{
            //    dr.Read();
            //    pid1 = Convert.ToInt32(dr["pid"]);
            //    pname1 = dr["pname"].ToString();
            //    hname1 = dr["hname"].ToString();
            //}
            //cn.Close();
            pname1 = Request.QueryString.Get("pname");
            hname1 = Request.QueryString.Get("hname");
            cn.Open();
            qry = "insert into Discharge_P values('" + id + "','" + pname1 + "','" + hname1 + "','RECOVER','" + DateTime.Now.ToString("dd-MM-yyyy") + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            qry = "update positive_c_b set status= 1 where pname='"+pname1+"'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("publichealthcare2000@gmail.com");
        string mailid = Request.QueryString.Get("mail");
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
        Response.Write("<script lang='javascript'>alert('Email Sent Successfully!!')</script>");
        Response.Redirect("Dis_B_P.aspx?hname="+hname1+ "&pname1=" + pname1 +  "&pid=" + id);
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/dis/dis.html")))
        {
            body = reader.ReadToEnd();
        }


        body = body.Replace("Uname", pname1); //replacing Parameters
        body = body.Replace("Date", System.DateTime.Today.ToString());
        body = body.Replace("Hname", Session["hname"].ToString());

        return body;

    }
}