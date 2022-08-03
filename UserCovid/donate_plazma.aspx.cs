using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string fname,uimg;
    int status;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from plazma_mstr where email='"+Session["umail"]+"' or email='"+txtmail.Text+"'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status=Convert.ToInt32( dr["status"]);
            if (status == 0)
            {
                Response.Redirect("plazma_pend.aspx");
            }
        }
        cn.Close();
        

        cn.Open();
        qry = "select * from Uregister_mstr where name='"+Session["uname"]+"'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtname.Text = Session["uname"].ToString();
            txtname.Visible = false;

            txtmail.Text = Session["umail"].ToString();
            txtmail.Visible = false;

            txtcno.Text = Session["cno"].ToString();
            txtcno.Visible = false;
            uimg = dr["img"].ToString();
        }
        else
        {
            txtname.Visible = true;
            txtmail.Visible = true;
            txtcno.Visible = true;
            uimg = "u1.png";
        }
        cn.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (ddlreport.SelectedItem.Text == "Negative")
        {
            Response.Redirect("no_plazma.aspx");
        }
        else
        {
            fname = ViewState["fname"].ToString();
            cn.Open();
            qry = "insert into plazma_mstr values('"+txtname.Text+"','"+txtmail.Text+"','"+txtcno.Text+"','"+txtbld.Text+"','0','"+ddlreport.SelectedItem.Text+"','"+fname+"','"+Request.QueryString.Get("hname")+"','" + uimg + "')";
            cmd = new SqlCommand(qry,cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("plazma_pend.aspx");
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
                FileUpload1.SaveAs(Server.MapPath("~/plazma/" + fname));
                Label1.Text = "file uploaded successsfully";
                Image1.ImageUrl = "~/plazma/" + fname;


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
}