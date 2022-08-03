using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserDoc_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,dname;
    string  fees,uimg,pname;
    SqlDataReader dr;
    int id;
    DateTime d1 = new DateTime();
    DateTime adate = System.DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        


        cn.Open();
        qry = "Select * from Apaid where  pname='" + Application["uname"] + "' and email='"+Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            pname = dr["pname"].ToString();
            id = Convert.ToInt32(dr["pid"]);
            cn.Close();
            cn.Open();
            qry = "delete from Apaid where pname='"+pname+"' and pid='"+id+"'";
            cmd = new SqlCommand(qry,cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            qry = "delete from Appointment_mstr where pname='" + pname + "' and pid='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        cn.Close();


          cn.Open();
        qry = "select * from Uregister_mstr where name='" + Session["uname"] + "' and email ='"+Session["umail"]+"'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtpname.Text = dr["name"].ToString();
            txtemail.Text = dr["email"].ToString();
            txtphno.Text = dr["cno"].ToString();
            uimg = dr["img"].ToString();
            cn.Close();
        }   
        else
        {
            Response.Redirect("../UserCovid/adclogin/PLogin.aspx");
        }
        cn.Open();
        qry = "select * from Appointment_mstr where status = 0 and pname='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Response.Redirect("../UserCovid/Appointmentpen.aspx");
        }
        cn.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        d1 =Convert.ToDateTime( txtdate.Text);
        if (d1 > adate)
        {
            cn.Open();
            qry = "insert into Appointment_mstr values('" + txtpname.Text + "','" + ddlbranch.SelectedItem.Value + "','" + ddlhos.SelectedItem.Value + "','" + ddldoc.SelectedItem.Value + "','" + ddldesg.SelectedItem.Value + "','" + txtemail.Text + "','" + txtphno.Text + "','" + txtcmnts.Text + "','" + ddlfees.SelectedItem.Text + "','0','" + txtdate.Text + "','" + uimg + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../PaymentA/CashF.aspx");
        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Please Select Valid Date!!')</script>");
        }
    }
}