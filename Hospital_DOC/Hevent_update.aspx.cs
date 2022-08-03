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
    string qry, fname;
    DateTime vdate = System.DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ViewState["fname"] = Request.QueryString.Get("eimg").ToString();

            Image1.ImageUrl = "~/Lab_events/" + Request.QueryString.Get("eimg");
            txtdname.Text = Request.QueryString.Get("ename");
            txtdate.Text = Request.QueryString.Get("edate");
            txtbio.Text = Request.QueryString.Get("edes");

        }
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                if (FileUpload1.PostedFile.ContentLength <= 500000)
                {
                    fname = FileUpload1.FileName;
                    ViewState["fname"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Lab_events/" + fname));
                    Label1.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/Lab_events/" + fname;
                }
                else
                {
                    Label1.Text = "plzz select < 500 kb file";
                }
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
    protected void btn_update_Click(object sender, EventArgs e)
    {
        DateTime txt = Convert.ToDateTime(txtdate.Text);
        if (txt > vdate)
        {
            fname = ViewState["fname"].ToString();
            cn.Open();
            qry = "update Event_mstr set ename='" + txtdname.Text + "',description='" + txtbio.Text + "',img='" + fname + "',date='" + txtdate.Text + "' where eid='" + Request.QueryString.Get("eid") + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("View_e.aspx");
            cn.Close();
        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Please Select Valid Date!!')</script>");
        }
    }
}