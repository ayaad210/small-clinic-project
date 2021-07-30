using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        message.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        con.Open();
        com.CommandText = "select max(p_id) from Patients";
        SqlDataReader dr = com.ExecuteReader();
        int id1=-1;
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
        con.Close();

        
        con.Open();
        com.CommandText = "insert into patients values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "','" +TextBox8.Text+"')";
      
       com.ExecuteNonQuery();
        con.Close();
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        //TextBox3.Text = "";
        //TextBox4.Text = "";
        //TextBox5.Text = "";
        //TextBox6.Text = "";
        //TextBox7.Text = "";
        //CheckBox1.Checked = false;

        con.Open();
        com.CommandText = "select max(p_id) from Patients";
       dr = com.ExecuteReader();
        int id2 = -1;
        while (dr.Read())
        {
            try
            {

                id2 = int.Parse(dr[0].ToString());
            }
            catch (System.FormatException)
            {
                id2 = -1;
            }
        };
        con.Close();
        if (id1<id2&&id1>=-1&&id2>-1)
        { Label8.ForeColor = System.Drawing.Color.Green;
            Label8.Text = " Done Successfully with new id : " + id2;
        }
        else
        {
            Label8.ForeColor = System.Drawing.Color.Red; ;
            Label8.Text = "Did not Succeed  Please Try Again Or Check your input "; 
        }
        addpatient.Visible = false;
        message.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("addpatient.aspx");
    }
}