using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class AdminDOC_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int counttotc;
    string name, img,dname,dimg;
    protected void Page_Load(object sender, EventArgs e)
    {


        
                cn.Open();
        qry = "select  Sum(totbed) from Addbed_mstr ";
        cmd = new SqlCommand(qry, cn);
        counttotc = (Int32)cmd.ExecuteScalar();
        lblbed.Text = counttotc.ToString();
        cn.Close();            

        cn.Open();
        qry = "select * from Hospital_mstr ";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        lblh.Text = ds1.Tables[0].Rows.Count.ToString();
        cn.Close();

        cn.Open();
        qry = "select * from Doctor_mstr ";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp3 = new SqlDataAdapter(cmd);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3);
        cn.Close();
        lbld.Text = ds3.Tables[0].Rows.Count.ToString();



        cn.Open();
        qry = "select * from Vcentre_mstr ";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp4 = new SqlDataAdapter(cmd);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        cn.Close();
        lblc.Text = ds4.Tables[0].Rows.Count.ToString();

        cn.Open();
        qry = "select * from Appointment_mstr where status = 1";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp5 = new SqlDataAdapter(cmd);
        DataSet ds5 = new DataSet();
        adp5.Fill(ds5);
        cn.Close();
        lbla.Text = ds5.Tables[0].Rows.Count.ToString();
        cn.Open();
        qry = "select * from plazma_mstr ";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp6 = new SqlDataAdapter(cmd);
        DataSet ds6 = new DataSet();
        adp6.Fill(ds6);
        cn.Close();
        lblp.Text = ds6.Tables[0].Rows.Count.ToString(); 
    }
}

