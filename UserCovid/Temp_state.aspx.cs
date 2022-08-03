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
    string qry, state1, state2;
    Int32 counttotc,counttotr,counttotd,counttota,counttotn;
    int s, sid, flag;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from State_mstr";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        cn.Close();
        s = ds1.Tables[0].Rows.Count;

        cn.Open();
        qry = "select * from State_mstr";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            sid = Convert.ToInt32(dr["sid"]);
        }
        cn.Close();


        cn.Open();
        qry = "select * from total_state";
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
        if (flag == 0)
        {
            for (int i = 1; i <= s; i++)
            {

                //count = 0;
                cn.Open();
                qry = "select * from State_mstr where sid='" + sid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    dr.Read();
                    state1 = dr["sname"].ToString();
                    sid++;
                }
                cn.Close();


                cn.Open();
                qry = "select * from total where sname='" + state1 + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    cn.Close();
                    cn.Open();
                    qry = "select  Sum(total_case) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotc = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_recover) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotr = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_death) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotd = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_active) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttota = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_neg) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotn = (Int32)cmd.ExecuteScalar();
                    cn.Close();
                    cn.Open();
                    qry = "insert into total_state values('" + state1 + "','" + counttotc + "','"+counttotr+"','"+counttotd+"','"+counttota+"','"+counttotn+"')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    //state2 = dr["sname"].ToString();
                }
                cn.Close();
                //Label1.Text = count.ToString();




            }
        }
        else
        {
            for (int i = 1; i <= s; i++)
            {

                //count = 0;
                cn.Close();
                cn.Open();
                qry = "select * from State_mstr where sid='" + sid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    dr.Read();
                    state1 = dr["sname"].ToString();
                    sid++;
                }
                cn.Close();


                cn.Open();
                qry = "select * from total where sname='" + state1 + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    cn.Close();
                    cn.Open();
                    qry = "select  Sum(total_case) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotc = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_recover) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotr = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_death) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotd = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_active) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttota = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "select  Sum(total_neg) from total where sname='" + state1 + "' ";
                    cmd = new SqlCommand(qry, cn);
                    counttotn = (Int32)cmd.ExecuteScalar();
                    cn.Close();

                    cn.Open();
                    qry = "update total_state set total_case='" + counttotc + "',total_recover='"+counttotr+"',total_death='"+counttotd+"',total_active='"+counttota+"',total_neg='"+counttotn+"' where sname='" + state1 + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }
        }
        Response.Redirect("Temp_city.aspx");
    }
}
    