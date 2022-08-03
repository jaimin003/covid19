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
    string einame;
    DateTime vdate = System.DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void bt_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                
                    einame = FileUpload1.FileName;
                    ViewState["einame"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Lab_events/" + einame ));
                    Label1.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/Lab_events/" + einame;
                
                
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime txt = Convert.ToDateTime(txtdate.Text);
        if (txt > vdate)
        {
            einame = ViewState["einame"].ToString();
            cn.Open();
            qry = "insert into Event_mstr values('" + Session["Hname"].ToString() + "','" + txtename.Text + "','" + txtedesc.Text + "','" + txtdate.Text + "','" + einame + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("View_e.aspx");
        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Please Select Valid Date!!')</script>");
        }

    }
}