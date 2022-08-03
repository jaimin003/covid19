using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status,status1,status2;
    string fname;
    int freebed,flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Uregister_mstr where name='" + Application["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {
            Response.Redirect("../UserCovid/adclogin/PLogin.aspx");
        }
        cn.Close();

        cn.Open();
        qry = "select * from Bed_Book where email='" + Session["umail"] + "' and pname='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status1 = Convert.ToInt32(dr["status"]);

            if (status1 == 0)
            {
                Response.Redirect("BBookPen.aspx");
                
            }
           
        }
        cn.Close();

        cn.Open();
        qry = "select * from PAdmit_mstr where email='"+Session["umail"]+"' and pname='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status1 = Convert.ToInt32(dr["status"]);

            
             if (status1 == 0)
            {
                Response.Redirect("alreadybbook.aspx");
            }
        }
        cn.Close();

        cn.Open();
        qry = "select * from positive_c_b where pname='" + Session["uname"] + "' and email='"+Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status2 = Convert.ToInt32(dr["status"]);            
        
            if(status2 == 0)
        {
            Response.Redirect("alreadybbook.aspx");
        }
        }
        
        cn.Close();        
        freebed =Convert.ToInt32(Request.QueryString.Get("freebed"));
        if (freebed == 0)
        {
            flag = 1;
            
            Response.Redirect("BedInfo.aspx?flag=" + flag);
        }
       
    }
    protected void bt_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {

                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/aadharimages/" + fname));
                Label1.Text = "file uploaded successsfully";
                Image1.ImageUrl = "~/aadharimages/" + fname;


            }
            else
            {
                Label1.Text = "select a image file";
            }
        }
        else
        {
            Label1.Text = "plzz select a file";
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {


        cn.Open();
        qry = "select * from Uregister_mstr where name='" + Session["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status = Convert.ToInt32(dr["status"]);
        }
        cn.Close();
        if (status == 1)
        {
            fname = ViewState["fname"].ToString();
            cn.Open();
            qry = "insert into Bed_Book values('" + Session["uname"].ToString() + "','" + Session["umail"].ToString() + "','" + Session["cno"].ToString() + "','" + txtadd.Text + "','" + txtano.Text + "','" + fname + "','" + rdbgender.SelectedValue + "','" + Convert.ToInt32(Session["age"]) + "','" + ddlareq.SelectedItem.Value + "','" + Request.QueryString.Get("hname") + "','" +  Request.QueryString.Get("rent") + "','0')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();            
            Response.Redirect("BBookPen.aspx");
        }
        else
        {
            Response.Redirect("../UserCovid/adclogin/PLogin.aspx");
        }
        
    }
}