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
    string qry,img,fname;
    SqlDataReader dr;
    int tid;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if(!IsPostBack)
        //{
        //cn.Open();
        //    qry = "select * from Admin_Register where name='" + Session["Aname"] + "' and email='" + Session["mail"] + "'";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //        tid = Convert.ToInt32(dr["id"]);
        //        //img = dr["aimg"].ToString();                
                
        //    }
        //    cn.Close();        
        //}
        if(!IsPostBack)
        {
                img = Session["pic"].ToString();
                ViewState["fname"] = img;
                imgd.ImageUrl = "~/aimages/" + ViewState["fname"];
                txtname.Text = Session["Aname"].ToString();
                txtemail.Text = Session["mail"].ToString();            
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
                    FileUpload1.SaveAs(Server.MapPath("~/aimages/" + fname));
                    Label3.Text = "file uploaded successsfully";
                    imgd.ImageUrl = "~/aimages/" + fname;                  
                    Session["pic"] = fname;              
                    cn.Close();
                    
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
        qry = "update Admin_Register set name='" + txtname.Text + "',email='" + txtemail.Text + "',aimg='" + fname + "' where name='" + Session["Aname"] + "'";        
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();        
        Session["Aname"] = txtname.Text;
        Session["mail"] = txtemail.Text;
        Response.Redirect("Ahome.aspx");
        cn.Close();     
    }
}