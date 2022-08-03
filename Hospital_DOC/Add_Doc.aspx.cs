using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string fname;    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                if (FileUpload1.PostedFile.ContentLength <= 500000)
                {
                    fname = FileUpload1.FileName;
                    ViewState["fname"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/DocImg/" + fname));
                    Label1.Text = "file uploaded successsfully";
                    
                    Image1.ImageUrl = "~/DocImg/" + fname;
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
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "insert into Doctor_mstr values('"+Session["Hname"].ToString()+"','"+ddlbranch.SelectedItem.Text+"','" + txtdname.Text + "','" + txtmail.Text + "','" + txtspec.Text + "','"+txtphno.Text+"','"+ txtbio.Text +"','" + fname + "','" + Convert.ToInt32(txtfees.Text) + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
       
        cn.Close();
        Response.Redirect("Doc_List.aspx");
    }
}