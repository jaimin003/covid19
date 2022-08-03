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
    SqlDataReader dr;
    string prc;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ddlvname.Text = Request.QueryString.Get("vname");
            txtcname.Text = Request.QueryString.Get("name");
            txtadd.Text = Request.QueryString.Get("add");
            ddlzone.SelectedItem.Value = Request.QueryString.Get("desg");
            txtphno.Text = Request.QueryString.Get("phno");
            txtprc.Text = Request.QueryString.Get("price");
        }
        if (Session["type"].ToString() == "Government")
        {
            txtprc.Text = "Free";
            txtprc.ReadOnly = true;

        }
        else
        {
            prc = txtprc.Text;

        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update Vcentre_mstr set cname='" + txtcname.Text + "',address='" + txtadd.Text + "',zone='" + ddlzone.SelectedItem.Text + "',price='" + prc + "',phno='" + txtphno.Text + "' where vid='" + Request.QueryString.Get("vid") + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Centre_List.aspx");
        cn.Close();     
    }
}