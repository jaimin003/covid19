using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    string qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string flag1,sname,cname;
    int pid,flag,total_active;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag1 = Request.QueryString.Get("flag");
        pid = Convert.ToInt32(Request.QueryString.Get("pid"));
        if(flag1 == "1")
        {
            cn.Open();
            qry = "update Discharge_p set status = 'RECOVER' where pid='" + pid + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "select * from Discharge_p where status='RECOVER' and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            cn.Close();
            int rec_tot = ds.Tables[0].Rows.Count;

            cn.Open();
            qry = "select * from positive_c where status = 0 and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            cn.Close();
            int pc_tot2 = ds2.Tables[0].Rows.Count;


            cn.Open();
            qry = "select * from positive_c_b where status = 0 and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp3 = new SqlDataAdapter(cmd);
            DataSet ds3 = new DataSet();
            adp3.Fill(ds3);
            cn.Close();
            int pb_tot2 = ds3.Tables[0].Rows.Count;

            total_active = pc_tot2 + pb_tot2;

            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                sname = dr["state"].ToString();
                cname = dr["city"].ToString();
            }
            cn.Close();
            cn.Open();
            qry = "select * from total where hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                flag = 1;
            }
            else
            {
                flag = 0;
            }
            cn.Close();
            if (flag == 1)
            {

                cn.Open();
                qry = "update total set total_recover='"+rec_tot+"' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

                cn.Open();
                qry = "update total set total_active='" + total_active + "' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

            }
            else if (flag == 0)
            {
                cn.Open();
                qry = "insert into total values('" + Session["hname"].ToString() + "','" + sname + "','" + cname + "','0','"+rec_tot+"','0','0','0')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                flag = 1;
                cn.Close();

            }
            Response.Redirect("Discharge_P_List.aspx");     
        }
        else
        {
            cn.Open();
            qry = "update Discharge_p set status = 'RECOVER' where pid='" + Session["pid"] + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


             cn.Open();
             qry = "select * from Discharge_p where status='RECOVER' and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            cn.Close();
            int rec_tot = ds.Tables[0].Rows.Count;

            cn.Open();
            qry = "select * from positive_c where status = 0 and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            cn.Close();
            int pc_tot2 = ds2.Tables[0].Rows.Count;


            cn.Open();
            qry = "select * from positive_c_b where status = 0 and hname='" + Session["hname"] + "'";

            cmd = new SqlCommand(qry, cn);
            SqlDataAdapter adp3 = new SqlDataAdapter(cmd);
            DataSet ds3 = new DataSet();
            adp3.Fill(ds3);
            cn.Close();
            int pb_tot2 = ds3.Tables[0].Rows.Count;

            total_active = pc_tot2 + pb_tot2;

            cn.Open();
            qry = "select * from Hospital_mstr where name ='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                sname = dr["state"].ToString();
                cname = dr["city"].ToString();
            }
            cn.Close();
            cn.Open();
            qry = "select * from total where hname='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                flag = 1;
            }
            else
            {
                flag = 0;
            }
            cn.Close();
            if (flag == 1)
            {

                cn.Open();
                qry = "update total set total_recover='"+rec_tot+"' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

                cn.Open();
                qry = "update total set total_active='" + total_active + "' where hname='" + Session["hname"] + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();


            }
            else if (flag == 0)
            {
                cn.Open();
                qry = "insert into total values('" + Session["hname"].ToString() + "','" + sname + "','" + cname + "','0','" + rec_tot + "','0','0','0')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                flag = 1;
                cn.Close();
            }
            Response.Redirect("Discharge_P_List.aspx");
        }
        
    }
}