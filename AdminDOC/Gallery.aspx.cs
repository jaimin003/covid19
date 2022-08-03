using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminDOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, img, fname;
    SqlDataReader dr;    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
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
                    FileUpload1.SaveAs(Server.MapPath("~/hosimg/" + fname));
                    Label3.Text = "file uploaded successsfully";
                    imgd.ImageUrl = "~/hosimg/" + fname;                                        

                }
                else
                {
                    Label3.Text = "plzz select < 500 kb file";
                }
            }
            else
            {
                Label3.Text = "select a image file";
            }
        }
        else
        {
            Label3.Text = "plzz select a file";

        }
    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "insert into hosimg values('" + fname + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();        
        Response.Redirect("dispg.aspx");
        cn.Close();
    }
}