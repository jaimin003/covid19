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
    int totbed1, totfreeb1, totoccbed1;    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {           
            txthname.Text = Request.QueryString.Get("hname");
            totbed1 = Convert.ToInt32(Request.QueryString.Get("totbed"));
            //totfreeb1 = Convert.ToInt32(Request.QueryString.Get("freebed"));
            //totoccbed1 = Convert.ToInt32(Request.QueryString.Get("occupied"));
        }
    }
    protected void btn_addbed_Click(object sender, EventArgs e)
    {
        int totbed, totfreeb, totoccbed;
        string totbed2, totfreeb2, totoccbed2;
        totbed2 = txtaddb.Text;
        //totoccbed2 = txtoccub.Text;
        //totfreeb2 = txtfreeb.Text;
        totbed = Convert.ToInt32(Request.QueryString.Get("totbed")) + Convert.ToInt32(totbed2);
        totoccbed = Convert.ToInt32(Request.QueryString.Get("occupied"));
        totfreeb = totbed - totoccbed;
        cn.Open();
        qry = "update Addbed_mstr set totbed='" + totbed + "',rent='" + txtnrent.Text + "',occupied='" + totoccbed + "',freebed='" + totfreeb + "' where hname='" + txthname.Text + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("BedList.aspx");
        cn.Close();    
    }
    //protected void btn_occupied_Click(object sender, EventArgs e)
    //{
    //    int totbed, totfreeb, totoccbed;
    //    string totbed2, totfreeb2, totoccbed2;
    //    totbed2 = txtaddb.Text;
    //    totoccbed2 = txtoccub.Text;
    //    totfreeb2 = txtfreeb.Text;
    //    totbed = Convert.ToInt32(Request.QueryString.Get("totbed"));
    //    totoccbed =  Convert.ToInt32(Request.QueryString.Get("occupied")) + Convert.ToInt32(totoccbed2);
    //    totfreeb = totbed - totoccbed;
    //    if (totoccbed > totbed)
    //    {
    //        Label1.Text = "YOU CAN'T OCCUPIED BED BCZ BED ARE NOT AVAILABLE....";
    //    }
    //    else
    //    {
    //        cn.Open();
    //        qry = "update Addbed_mstr set totbed='" + totbed + "',occupied='" + totoccbed + "',freebed='" + totfreeb + "' where hname='" + txthname.Text + "'";
    //        cmd = new SqlCommand(qry, cn);
    //        cmd.ExecuteNonQuery();
    //        Response.Redirect("BedList.aspx");
    //        cn.Close();       
    //    }        
    //}

    //protected void btn_freebed_Click(object sender, EventArgs e)
    //{
    //    int totbed, totfreeb, totoccbed;
    //    string totbed2, totfreeb2, totoccbed2;
    //    totoccbed2 = txtoccub.Text;
    //    totfreeb2 = txtfreeb.Text;
    //    if (Convert.ToInt32(totfreeb2) > Convert.ToInt32(Request.QueryString.Get("occupied")))
    //    {
    //        Label2.Text = "THERE IS NOT AVAILABLE BEDS....";
    //    }
    //    else
    //    {
    //        totoccbed = Convert.ToInt32(Request.QueryString.Get("occupied")) - Convert.ToInt32(totfreeb2);
    //        totfreeb = Convert.ToInt32(Request.QueryString.Get("freebed")) + Convert.ToInt32(totfreeb2);
    //        totbed = Convert.ToInt32(Request.QueryString.Get("totbed"));

    //        cn.Open();
    //        qry = "update Addbed_mstr set totbed='" + totbed + "',occupied='" + totoccbed + "',freebed='" + totfreeb + "' where hname='" + txthname.Text + "'";
    //        cmd = new SqlCommand(qry, cn);
    //        cmd.ExecuteNonQuery();
    //        Response.Redirect("BedList.aspx");
    //        cn.Close();
    //    }
    //}
}