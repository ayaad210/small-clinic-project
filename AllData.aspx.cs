using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection();
   
   
   

    protected void Page_Load(object sender, EventArgs e)
    {

      

        if (Session["id"]==null)
        {
            Response.Redirect("search.aspx");
        }
        checkdelet.Visible = false;
      SqlCommand com = new SqlCommand();
        patient person = new patient();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
      

        
        con.Open();
        com.Connection = con;

        com.CommandText = "select * from patients where p_id ='" + Session["id"] + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            person.id = int.Parse(dr[0].ToString());
            person.name = dr[1].ToString();
            person.date = dr[2].ToString();
            person.age = dr[3].ToString();
            person.address = dr[4].ToString();
            person.occup = dr[5].ToString();
            person.price = double.Parse(dr[6].ToString());
            person.dis = dr[7].ToString();
            person.followUP = dr[8].ToString();
          
        }
        if (!IsPostBack)
        {
            TextBox8.Text = person.name;
            TextBox2.Text = person.date;
            TextBox3.Text = person.dis;
            TextBox4.Text = person.occup;
            TextBox5.Text = person.address;
            TextBox6.Text = person.price.ToString();
            TextBox7.Text = person.age;
            if (person.followUP=="1/1/1900 12:00:00 AM")
            {
                TextBox9.Text = null;
            }
            else
            {
TextBox9.Text = person.followUP;
            } 
        }


        con.Close();
        
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("search.aspx");
        }
        SqlCommand com2 = new SqlCommand();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;
        com2.Connection = con;
        con.Open();

        //  com2.CommandText= "exec [dbo].[updatedata] 3 ,'ahmed','8/10/2017 12:00:00 AM','36','fff','ff',50,'gg',''";

        try
        {

        
       
        //  com2.CommandText = "EXEC [dbo].[updatedata]  "+Session["id"]+" ,@name,@date,'"+TextBox7.Text +"','"+TextBox5.Text+"' , '"+TextBox4.Text+"',@price,'"+TextBox3.Text+"','"+CheckBox1.Text+"' ";
       
            com2.CommandText = "update patients  set p_name='" + TextBox8.Text + "' , [date] =@date, p_age = '" + TextBox7.Text + "' , p_address ='" + TextBox5.Text + "', p_occup = '" + TextBox4.Text + "' , price =@price ,p_dis = '" + TextBox3.Text + "',followUp='"+ (TextBox9.Text==null?TextBox10.Text:TextBox9.Text) + "'  where p_id='" + Session["id"] + "'";

            com2.Parameters.Add("@date", System.Data.SqlDbType.Date, 100, "[date]").Value = TextBox2.Text;
            com2.Parameters.Add("@price", System.Data.SqlDbType.Money, 100, "price").Value = TextBox6.Text;
            com2.Parameters.Add("@dis", System.Data.SqlDbType.NVarChar, 1000, "p_dis").Value = TextBox3.Text;
          //  com2.Parameters.Add("@follow", System.Data.SqlDbType.Date, 100, "followUp").Value = TextBox10.Text;

            com2.ExecuteNonQuery();
        }
         catch (Exception)
        {
            Label9.Text = "mm/dd/yyyy";
            Label10.Text = "mm/dd/yyyy";
        }




        con.Close();

        SqlCommand com = new SqlCommand();
        patient person = new patient();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;



        con.Open();
        com.Connection = con;

        com.CommandText = "select * from patients where p_id ='" + Session["id"] + "'";
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {

            person.id = int.Parse(dr[0].ToString());
            person.name = dr[1].ToString();
            person.date = dr[2].ToString();
            person.age = dr[3].ToString();
            person.address = dr[4].ToString();
            person.occup = dr[5].ToString();
            person.price = double.Parse(dr[6].ToString());
            person.dis = dr[7].ToString();
            person.followUP = dr[8].ToString();

        }
        TextBox8.Text = person.name;
        TextBox2.Text = person.date;
        TextBox3.Text = person.dis;
        TextBox4.Text = person.occup;
        TextBox5.Text = person.address;
        TextBox6.Text = person.price.ToString();
        TextBox7.Text = person.age;
        if (person.followUP == "1/1/1900 12:00:00 AM")
        {
         
            TextBox9.Text = null;
        }
        else
        {
            TextBox9.Text = person.followUP;
        }
    


    con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("alldata.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        Label8.Text = "Are you sure to delete this ?";
        Label8.ForeColor = System.Drawing.Color.Red;
        checkdelet.Visible = true;
        editpatient.Visible = false;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {


    
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;

        SqlCommand com3 = new SqlCommand();
        con.Open();
        com3.Connection = con;
        com3.CommandText = "delete from patients where p_id='" + Session["id"] + "'";

        com3.ExecuteNonQuery();
        con.Close();
        con.Open();
        com3.CommandText = "select p_id   from Patients where p_id='"+Session["id"]+"'";
        SqlDataReader dr;
        dr = com3.ExecuteReader();

        if (!dr.HasRows)
        {
            Label8.Text = "Deleted successfully";
            Label8.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label8.ForeColor = System.Drawing.Color.Red;
            Label8.Text = "fail to delete ";
        }
        con.Close();
        checkdelet.Visible = true;

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("alldata.aspx");
    }
}

   













  
