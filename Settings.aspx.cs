using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;


        con.Open();

        SqlCommand com = new SqlCommand();
        com.Connection = con;

        com.CommandText = "select * from users where id = '" + Session["key"] + "' and password='" + TextBox2.Text + "'";

        SqlDataReader dr = com.ExecuteReader();
       
        if (dr.HasRows)
        {
            
 con.Close();
            try
            {
                con.Open();
                com.CommandText = "update  users set  password = '" + TextBox3.Text + "'where id='" + Session["key"] + "'";
                com.ExecuteNonQuery();
                con.Close();
                Label3.Text = "Done Successfully";
            }catch(Exception)
            {
                Label3.Text = "Sorry!your password or user name is Incorrict";
            }
            
            
        }
        else
        {
            Label3.Text = "Sorry!your password or user name is Incorrict";
        }
        


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;

     
        SqlCommand com3 = new SqlCommand();
        con.Open();
        com3.Connection = con;
        com3.CommandText = "truncate table patients ";

        com3.ExecuteNonQuery();
        con.Close();
        con.Open();
        com3.CommandText = "select p_id   from Patients ";
        SqlDataReader dr;
        dr = com3.ExecuteReader();

        if (!dr.HasRows)
        {
            Label2.Text = "Deleted successfully";
            Label2.ForeColor = System.Drawing.Color.Green;

        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "fail to delete ";
        }
        con.Close();

        //addplussection.Style.Add("DISPLAY", "BLOCK");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("settings.aspx");
    }
}