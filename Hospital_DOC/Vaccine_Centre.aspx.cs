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
    string prc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"].ToString() == "Government")
        {
            txtprc.Text = "Free";
            txtprc.ReadOnly = true;

        }
        else
        {
            prc=txtprc.Text;
            
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        

            cn.Open();
            qry = "insert into Vcentre_mstr values('" + Session["Hname"] + "','" + txtcname.Text + "','" + ddlvname.SelectedItem.Text + "','" + txtadd.Text + "','" + ddlzone.SelectedItem.Text + "','" + prc + "','" + txtphno.Text + "','"+ddlstate.SelectedItem.Text+"','" + DropDownList1.SelectedItem.Text + "','" + Session["type"] + "','"+ddlage.SelectedValue+"')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Centre_List.aspx");
        
    }
}