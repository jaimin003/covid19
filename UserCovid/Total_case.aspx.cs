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
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Tst_Result  where result='Positive' and date='" + DateTime.Today + "'";

        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        cn.Close();
        Label1.Text = ds.Tables[0].Rows.Count.ToString();
    }
}