using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["key"] != null)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ClinicData"].ConnectionString;




            con.Open();

            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select user_name ,[key] from users where id ='" + Session["key"] + "'";
            SqlDataReader dr = com.ExecuteReader();
            string name = "welcome";
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    name = dr[0].ToString();
                }

                Label2.Text = name;


            }
            else
            {
                Response.Redirect("login.ASPX");
            }

        }
        else
        {
            Response.Redirect("login.ASPX");
        }


        Label1.Text = DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString(); ;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["key"] = null;
        Response.Redirect("login.aspx");
    }
}
