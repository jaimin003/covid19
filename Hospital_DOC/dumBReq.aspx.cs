using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;
using System.IO;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int id,age,rent;
    string action,name,add,gen,sname,cname;
    int totbed, totfreeb, totoccbed, total_case = 0, flag, total_active=0;
    int   totoccbed1;    
    protected void Page_Load(object sender, EventArgs e)
    {
         action = Request.QueryString.Get("action");
         name = Request.QueryString.Get("pname");        
        id = Convert.ToInt32(Request.QueryString.Get("bid"));
        if (action == "ACCEPTED")
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
                totoccbed = totoccbed1 + 1;
                totfreeb = totbed - totoccbed;
                cn.Close();       
                if (totoccbed > totbed)
                {
                    cn.Open();
                    qry = "delete from Bed_Book where bid='" + id + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    MailMessage mail = new MailMessage();
                    string mailid = Request.QueryString.Get("mail");
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("publichealthcare2000@gmail.com");
                    mail.Subject = "REGARDING BED BOOKING";
                    //string Body = "YOUR REQUEST FOR BED BOOKING HAS BEEN REJECTED BECAUSE BED IS NOT AVAILABLE. PLEASE STAY SAFE...";
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
                    Response.Write("<script lang='javascript'>alert('EMail Sent Successfullyy!!')</script>");
                }                         
            else
            {
                cn.Open();
                qry = "update Addbed_mstr set totbed='" + totbed + "',occupied='" + totoccbed + "',freebed='" + totfreeb + "' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();                
                cn.Close();


                cn.Open();
                qry = "update Bed_Book set status = 1 where pname='" + name + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                qry = "select * from Bed_Book where bid='" + id + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    add = dr["address"].ToString();
                    gen = dr["gender"].ToString();
                    age = Convert.ToInt32(dr["age"]);
                }
                cn.Close();
                cn.Open();
                qry = "insert into PAdmit_mstr values('" + name + "','" + Request.QueryString.Get("mail") + "','" + Request.QueryString.Get("phno").ToString() + "','" + add + "','" + Request.QueryString.Get("adno").ToString() + "','" + gen + "','" + age + "','" + Session["hname"].ToString() + "','0','" + System.DateTime.Now + "','" + System.DateTime.Now + "','0','" + Request.QueryString.Get("rent") + "','P')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                qry = "insert into positive_c_b values('" + name + "','" + Session["hname"].ToString() + "','0','" + Request.QueryString.Get("mail") + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();


                cn.Open();
                qry = "select * from positive_c  where hname='" + Session["hname"].ToString() + "'";

                cmd = new SqlCommand(qry, cn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                cn.Close();
                 int pc_tot= ds.Tables[0].Rows.Count;



                 cn.Open();
                 qry = "select * from positive_c_b where hname='" + Session["hname"].ToString() + "'";

                 cmd = new SqlCommand(qry, cn);
                 SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
                 DataSet ds1 = new DataSet();
                 adp1.Fill(ds1);
                 cn.Close();
                 int pb_tot = ds1.Tables[0].Rows.Count;


                 total_case = pc_tot + pb_tot;
                 
                 cn.Open();
                 qry = "select * from positive_c where status = 0 and  hname='" + Session["hname"].ToString()+"'";

                 cmd = new SqlCommand(qry, cn);
                 SqlDataAdapter adp2 = new SqlDataAdapter(cmd);
                 DataSet ds2 = new DataSet();
                 adp2.Fill(ds2);
                 cn.Close();
                 int pc_tot2 = ds2.Tables[0].Rows.Count;


                 cn.Open();
                 qry = "select * from positive_c_b where status = 0 and  hname='" + Session["hname"].ToString() + "'";

                 cmd = new SqlCommand(qry, cn);
                 SqlDataAdapter adp3 = new SqlDataAdapter(cmd);
                 DataSet ds3 = new DataSet();
                 adp3.Fill(ds3);
                 cn.Close();
                 int pb_tot2 = ds3.Tables[0].Rows.Count;

                 total_active = pc_tot2 + pb_tot2;

                  cn.Open();
                 qry = "select * from Hospital_mstr where name ='"+Session["hname"]+"'";
                 cmd = new SqlCommand(qry, cn);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                      sname = dr["state"].ToString();
                      cname = dr["city"].ToString();
                 }
                 cn.Close();
                 cn.Open();
                 qry = "select * from total where hname='"+ Session["hname"]+"'";
                 cmd = new SqlCommand(qry,cn);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     flag = 1;
                 }
                 else
                 {
                     flag = 0;
                 }
                 cn.Close();
                 if (flag == 1)
                 {
                     
                     cn.Open();
                     qry = "update total set total_case = '"+total_case+"',total_active='"+total_active+"' where hname='"+Session["hname"]+"'";
                     cmd = new SqlCommand(qry, cn);
                     cmd.ExecuteNonQuery();
                     cn.Close();
                     
                 }
                 else if(flag == 0)
                 {
                     cn.Open();
                     qry = "insert into total values('" + Session["hname"].ToString() + "','" + sname + "','" + cname + "','" + total_case + "','0','0','"+total_active+"','0')";
                     cmd = new SqlCommand(qry, cn);
                     cmd.ExecuteNonQuery();
                     flag = 1;
                     cn.Close();
                     
                 }
                MailMessage mail = new MailMessage();
                string mailid = Request.QueryString.Get("mail");
                mail.To.Add(mailid);
                mail.From = new MailAddress("publichealthcare2000@gmail.com");
                mail.Subject = "REGARDING BED BOOKING";
                //string Body = "YOUR REQUEST FOR BED BOOKING HAS BEEN " + action + " STAY SAFE";
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
                Response.Redirect("BedReq.aspx");
            }
            }
        }
        else
        {
            cn.Open();
            qry = "delete from Bed_Book where bid='" + id + "' and hname = '"+Session["hname"]+"' ";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            MailMessage mail = new MailMessage();
            string mailid = Request.QueryString.Get("mail");
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "REGARDING BED BOOKING";
            //string Body = "YOUR REQUEST FOR BED BOOKING HAS BEEN " + action + " STAY SAFE";
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
            Response.Redirect("BedReq.aspx");
        }
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/bb/bb.html")))
        {

            body = reader.ReadToEnd();

        }
        body = body.Replace("Action", action); //replacing Parameters              
        return body;
    }
    private string CBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/bbf/bbf.html")))
        {

            body = reader.ReadToEnd();

        }        
        return body;
    }
}