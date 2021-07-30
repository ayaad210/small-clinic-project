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
    SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 2000; i < 2030; i++)
            {
                DropDownList1.Items.Add(i.ToString());
                DropDownList3.Items.Add(i.ToString());
                DropDownList1.Items[0].Selected = true;
                DropDownList3.Items[0].Selected = true;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select COUNT(p_id) from patients";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label3.Text = dr[0].ToString() + "  patients";
        }
        con.Close();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select SUM(price) from patients ";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label4.Text = dr[0].ToString() + "  bounds";
        }
        con.Close();

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select COUNT(p_id) from patients where year([date])='" + DropDownList1.SelectedValue + "' and  MONTH([date])='" + DropDownList2.SelectedValue + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label6.Text = dr[0].ToString() + "  Patients";
        }
        con.Close();
    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select SUM(price) from patients where year([date])='" + DropDownList1.SelectedValue + "' and  MONTH([date])='" + DropDownList2.SelectedValue + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label7.Text = dr[0].ToString() + "  bounds";
        }
        con.Close();
    }




    protected void Button6_Click(object sender, EventArgs e)
    {

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select COUNT(p_id) from patients where year([date])='" + DropDownList3.SelectedValue + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label9.Text = dr[0].ToString() + "  Patients";
        }
        con.Close();
    }


  

     protected void Button8_Click(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select SUM(price) from patients where year([date])='" + DropDownList3.SelectedValue + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label10.Text = dr[0].ToString() + "  bounds";
        }
        con.Close();
    }




    protected void Button7_Click(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select COUNT(p_id) from patients where [date]='" +TextBox1.Text + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label12.Text = dr[0].ToString() + "  Patients";
        }
        con.Close();
        Button7.Focus();
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select SUM(price) from patients where [date]='" + TextBox1.Text + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            Label13.Text = dr[0].ToString() + "  bounds";
        }
        con.Close();
        Button9.Focus();

    }
}
