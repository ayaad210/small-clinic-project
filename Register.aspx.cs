using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
        SqlCommand com = new SqlCommand();

        com.Connection = con;
        con.Open();
        com.CommandText = "select max(id) from users";
        SqlDataReader dr = com.ExecuteReader();
        int id1 = -1;
        while (dr.Read())
        {
            try
            {
                id1 = int.Parse(dr[0].ToString());
            }
            catch (System.FormatException)
            {
                id1 = -1;
            }

        }
        SqlCommand com2 = new SqlCommand();


        con.Close();


        con.Open();

        com.CommandText = "insert into users(user_name,[password],gender)  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "')";
        try
        {
            com.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException)
        {

            Label1.Text = "there is an error or your User name EXIST > Use Another";
        }
     
     
  

       //     Response.Write("there is an error or your User name EXIST >>UESE Another");
        
        con.Close();



        con.Open();
        com.CommandText = "select max(id) from users";
        dr = com.ExecuteReader();
        int id2 = -1;
        while (dr.Read())
        {

            try { 

                id2 = int.Parse(dr[0].ToString());
           }
            catch (System.FormatException)
            {

                id2 = -1;
            }
        };
        con.Close();
        if (id1 < id2 && id1 >= -1 && id2 > -1)
        {
        Label1.Text= " Done Successfully";
          
        }
        else
        {
            Label1.Text = "there is an error or your User name EXIST > Try Another";
        }

    }
}