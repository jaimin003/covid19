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
    string qry,method;
    SqlDataReader dr;
    int tid,tamt,flag,total_case,total_active,total_neg;
    string name, hname, bld, res, email,sname,cname;
    protected void Page_Load(object sender, EventArgs e)
    {
        res = Request.QueryString.Get("result").ToString();
        if (res == "Positive")
        {
            tid = Convert.ToInt32(Request.QueryString.Get("tid"));
            Session["pid"] = tid;

            cn.Open();
            qry = "update Test_request set status = 1 where id='" + tid + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            
            cn.Open();
            name = Request.QueryString.Get("name");
            email = Request.QueryString.Get("mail");
            hname = Session["hname"].ToString();
            res = Request.QueryString.Get("result");
            bld = Request.QueryString.Get("bld");
            tamt = Convert.ToInt32(Request.QueryString.Get("tamt"));
            qry = "insert into Tst_Result values('" + tid + "','" + name + "','" + email + "','" + bld + "','" + res + "','" + hname + "','" + tamt + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


            cn.Open();
            qry = "select * from Tpaid where tid='" + tid + "' and pname='" + name + "' and email='" + email + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                method = dr["method"].ToString();

                cn.Close();
               
               
                if (method == "CASH")
                {
                    cn.Open();
                    qry = "update Tpaid set status=1 where tid='" + tid + "' and pname='" + name + "' and email='" + email + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();

                }
            }

            cn.Close();
            MailMessage mail = new MailMessage();
            string mailid = email;
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "PUBLIC HEALTH CARE";
            //string Body = "YOU ARE TESTED " + res + " FOR COVID19.";
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


            cn.Open();
            qry = "insert into positive_c values('" + name + "','" + hname + "','0')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from positive_c where hname='" + hname + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            cn.Close();
            int pc_tot = ds.Tables[0].Rows.Count;



            cn.Open();
            qry = "select * from positive_c_b where hname='" + hname + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            cn.Close();
            int pb_tot = ds1.Tables[0].Rows.Count;


            total_case = pc_tot + pb_tot;
            cn.Open();
            qry = "select * from positive_c where status=0 and hname='" + hname + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            cn.Close();
            int pc_tot2 = ds2.Tables[0].Rows.Count;


            cn.Open();
            qry = "select * from positive_c_b where status = 0  and hname='" + hname + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp3 = new SqlDataAdapter(cmd);
            DataSet ds3 = new DataSet();
            adp3.Fill(ds3);
            cn.Close();
            int pb_tot2 = ds3.Tables[0].Rows.Count;

            total_active = pc_tot2 + pb_tot2;

            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + Session["hname"] + "'";
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
            qry = "select * from total where hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
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
                qry = "update total set total_case = '" + total_case + "',total_active='" + total_active + "' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

            }
            else if (flag == 0)
            {
                cn.Open();
                qry = "insert into total values('" + Session["hname"].ToString() + "','" + sname + "','" + cname + "','" + total_case + "','0','0','" + total_active + "','0')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                flag = 1;
                cn.Close();

            }

            Response.Redirect("Dis_test_p.aspx");

        }
        else
        {
            tid = Convert.ToInt32(Request.QueryString.Get("tid"));
            Session["pid"] = tid;
            cn.Open();
            qry = "update Test_request set status = 1 where id='" + tid + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();

            name = Request.QueryString.Get("name");
            email = Request.QueryString.Get("mail");
            hname = Session["hname"].ToString();
            res = Request.QueryString.Get("result");
            bld = Request.QueryString.Get("bld");
            tamt = Convert.ToInt32(Request.QueryString.Get("tamt"));
            qry = "insert into Tst_Result values('" + tid + "','" + name + "','" + email + "','" + bld + "','" + res + "','" + hname + "','" + tamt + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from Tpaid where tid='" + tid + "' and pname='" + name + "' and email='" + email + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                method = dr["method"].ToString();
                cn.Close();
                
                
               
                if (method == "CASH")
                {
                    cn.Open();
                    qry = "update Tpaid set status=1 where tid='" + tid + "' and pname='" + name + "' and email='" + email + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();

                }
            }

            cn.Close();
            MailMessage mail = new MailMessage();
            string mailid = email;
            mail.To.Add(mailid);
            mail.From = new MailAddress("publichealthcare2000@gmail.com");
            mail.Subject = "PUBLIC HEALTH CARE";
            //string Body = "YOU ARE TESTED " + res + " FOR COVID19.";
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

            cn.Open();
            qry = "insert into negative_c values('" + name + "','" + hname + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from negative_c where hname='" + hname + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp4 = new SqlDataAdapter(cmd);
            DataSet ds4 = new DataSet();
            adp4.Fill(ds4);
            cn.Close();
            int neg_tot = ds4.Tables[0].Rows.Count;

            total_neg = neg_tot;
            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + Session["hname"] + "'";
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
            qry = "select * from total where hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
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
                qry = "update total set total_neg='" + total_neg + "' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

            }
            else if (flag == 0)
            {
                cn.Open();
                qry = "insert into total values('" + Session["hname"].ToString() + "','" + sname + "','" + cname + "','0','0','0','0','" + total_neg + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                flag = 1;
                cn.Close();

            }


            Response.Redirect("Test_Result.aspx");
        }
    }
    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/ctest/ctest.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("Result", res); //replacing Parameters

        //body = body.Replace("{lname}", txt_lname.Text);        

        return body;

    }
}
