using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Hospital_DOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int tbid, s;
    SqlDataReader dr;
    DateTime date1, edate = new DateTime();
    protected void Page_Load(object sender, EventArgs e)
    {

         edate = System.DateTime.Today;
        cn.Open();
        qry = "select * from Event_mstr where  hospital='"+Session["hname"]+"'";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        s = ds1.Tables[0].Rows.Count;
        cn.Open();
        qry = "select * from Event_mstr  where  hospital='" + Session["hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            tbid = Convert.ToInt32(dr["eid"]);
        }
  
        for (int i = 1; i <= s; i++)
        {
            cn.Close();
            cn.Open();
            qry = "select * from Event_mstr where  eid='" + tbid + "' and hospital='" + Session["hname"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                date1 = Convert.ToDateTime(dr["date"]);
                
                cn.Close();
                if (date1 < edate)
                {

                    cn.Open();
                    qry = "delete from Event_mstr where eid='" + tbid + "' and hospital='" + Session["hname"] + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteReader();

                    cn.Close();
                    
                    tbid++;
                }
                else
                {
                    tbid++;
                }
            }
            else
            {
                tbid++;
                i--;
            }
            
        }
        cn.Close();
    
        Response.Redirect("Temp_app.aspx");
    }
}