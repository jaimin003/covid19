using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class UserCovid_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    
    string totc,totr, totd;
    int sc,sd;
    protected void Page_Load(object sender, EventArgs e)
    {
  
        cn.Open();
        qry = "select  Sum(total_case) from total";
        cmd = new SqlCommand(qry, cn);
        totc = cmd.ExecuteScalar().ToString();
        //tc1.Text = totc.ToString();
        if (totc != "0")
        {
            tc1.Text = totc;
        }
        else
        {
            tc1.Text = "0";
        }
        cn.Close();

        cn.Open();
        qry = "select  Sum(total_recover) from total";
        cmd = new SqlCommand(qry, cn);
        totr = cmd.ExecuteScalar().ToString();
        if (totr != "0")
        {
            trc1.Text = totr;
        }
        else
        {
            trc1.Text = "0";
        }
        cn.Close();

        //trc1.Text = totr.ToString();
        cn.Open();
        qry = "select  Sum(total_death) from total";
        cmd = new SqlCommand(qry, cn);
        totd = cmd.ExecuteScalar().ToString();
        if (totd != "0")
        {
            td1.Text = totr;
        }
        else
        {
            td1.Text = "0";
        }
        cn.Close();
        //td1.Text = totd.ToString();

        cn.Open();
        qry = "select  Sum(total_active) from total";
        cmd = new SqlCommand(qry, cn);
        totd = cmd.ExecuteScalar().ToString();
        cn.Close();
        tac2.Text = totd.ToString();



        cn.Open();
        qry = "select * from Tst_Result  where result='Positive' and date='" + System.DateTime.Today.ToString("dd-MM-yyyy") + "'";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        cn.Close();
        int a = ds.Tables[0].Rows.Count;

        cn.Open();
        qry = "select * from PAdmit_mstr where status = '0' and date='" + System.DateTime.Today +"'";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        int b = ds1.Tables[0].Rows.Count;
        sc = a + b;
        tc2.Text = sc.ToString();


        cn.Open();
        qry = "select * from Discharge_p  where status='DEATH' and date='" + System.DateTime.Today.ToString("dd-MM-yyyy") + "'";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp2 = new SqlDataAdapter(cmd);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        cn.Close();
        td2.Text = ds2.Tables[0].Rows.Count.ToString();

     
        
    }
}