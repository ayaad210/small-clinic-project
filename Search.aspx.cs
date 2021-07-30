using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
        if (!IsPostBack)
        {
            con.Open();

            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select p_id , p_name ,date from patients  ";
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            con.Close();
        }
        Button1.Focus();
       
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;

        if (RadioButtonList1.SelectedValue == "date")
        {

            con.Open();
            try
            {

            
        
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select p_id , p_name ,date from patients where date = '" + TextBox1.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            }
                catch (System.Data.SqlClient.SqlException)
            {

                Label3.Text = "select a Suitable search method";
            }

            con.Close();
        }
        else if (RadioButtonList1.SelectedValue == "id")
        {
            try
            {
                con.Open();

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select p_id , p_name ,date from patients where p_id = '" + TextBox1.Text + "'";
                SqlDataReader dr = com.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            catch (System.Data.SqlClient.SqlException)
            {

                Label3.Text = "select a Suitable search method";
            }
            con.Close();
        }
        else if (RadioButtonList1.SelectedValue == "followup")
        {
            con.Open();
            try
            {
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select p_id , p_name ,date from patients where followUp = '" + TextBox1.Text + "'";
                SqlDataReader dr = com.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            catch (System.Data.SqlClient.SqlException)
            {

                Label3.Text = "select a Suitable search method";
            }
            con.Close();
        }
        else
        {
            con.Open();
            try
            {
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select p_id , p_name ,date from patients where p_name like '" + TextBox1.Text + "%'";
                SqlDataReader dr = com.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            catch (System.Data.SqlClient.SqlException)
            {

                Label3.Text = "select a Suitable search method";
            }
            con.Close();
        }


    }





    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

        string value = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        Session["id"] = value;

        Response.Redirect("alldata.aspx");

    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
        con.Open();

        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select * from patients where p_name like '%" + TextBox1.Text + "%'";
        SqlDataReader dr = com.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();

        con.Close();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
        Button1.Focus();
    }

    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
