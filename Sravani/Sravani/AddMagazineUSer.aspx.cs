using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class AddMagazineUSer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Sravani36ConnectionString"].ConnectionString);
            String us = Convert.ToString(Session["user"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Events values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + us + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','No')", conn);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("Successfully Added");
            }
            else
            {
                Response.Write("Invalid Details");
            }
            conn.Close();
            conn.Open();
            cmd = new SqlCommand("insert into Comments values('" + TextBox1.Text + "',NULL,NULL)", conn);
            i = cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Database error...." + ex);
        }
    }
}