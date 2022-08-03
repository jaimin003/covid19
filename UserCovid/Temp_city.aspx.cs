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
    string qry, city1, city2;
    Int32 counttotc, counttotr, counttotd, counttota, counttotn;
    int c, cid, flag;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn.Open();
        qry = "select * from City_mstr";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        c = ds1.Tables[0].Rows.Count;

        cn.Open();
        qry = "select * from City_mstr";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            cid = Convert.ToInt32(dr["cid"]);
        }
        cn.Close();


        cn.Open();
        qry = "select * from total_city";
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

        cn.Open();
        if (flag == 0)
        {
            for (int i = 1; i <= c; i++)
            {

                //count = 0;
                cn.Close();
                cn.Open();
                qry = "select * from City_mstr where cid='" + cid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    city1 = dr["cname"].ToString();
                    cid++;
                }
                cn.Close();


                cn.Open();
                qry = "select * from total where cname='" + city1 + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    cn.Close();
                    cn.Open();
                    qry = "select  Sum(total_case) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotc = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_recover) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotr = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_death) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotd = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_active) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttota = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_neg) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotn = (Int32)cmd.ExecuteScalar();
                    cn.Close();
                    cn.Open();
                    qry = "insert into total_city values('" + city1 + "','" + counttotc + "','" + counttotr + "','" + counttotd + "','" + counttota + "','" + counttotn + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                 
                }
                
                //Label1.Text = count.ToString();




            }
        }
        else
        {
            for (int i = 1; i <= c; i++)
            {

                //count = 0;
                cn.Close();
                cn.Open();
                qry = "select * from City_mstr where cid='" + cid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    dr.Read();
                    city1 = dr["cname"].ToString();
                    cid++;
                }
                cn.Close();


                cn.Open();
                qry = "select * from total where cname='" + city1 + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    cn.Close();
                    cn.Open();
                    qry = "select  Sum(total_case) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotc = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_recover) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotr = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_death) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotd = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_active) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttota = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_neg) from total where cname='" + city1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotn = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "update total_city set total_case='" + counttotc + "',total_recover='" + counttotr + "',total_death='" + counttotd + "',total_active='" + counttota + "',total_neg='" + counttotn + "' where cname='" + city1 + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }
        }


        Response.Redirect("UHome.aspx");
    }
}