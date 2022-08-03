using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminDOC_Assets_Asignupaspx : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                if (FileUpload1.PostedFile.ContentLength <= 10000)
                {
                    fname = FileUpload1.FileName;
                    ViewState["fname"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/aimages/" + fname));
                    Label1.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/aimages/" + fname;
                }
                else
                {
                    Label1.Text = "plzz select < 100 kb file";
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
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "insert into Uregister_mstr values('" + txtname.Text + "','" + txtmail.Text + "','" + txtpass.Text + "','" + fname + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Alogin.aspx");
        cn.Close();        
    }
}