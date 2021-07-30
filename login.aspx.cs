using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;


            con.Open();

            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select id from users where user_name = '" + TextBox1.Text + "' and password='"+TextBox2.Text+"'";
       
            SqlDataReader dr = com.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["key"] = dr[0];
            }
            
           
            Response.Redirect("search.aspx");
        }
        else
        {
            Label1.Text= "Password Or User NAME IS InCorrict";
        }
            con.Close();
        
    }
}