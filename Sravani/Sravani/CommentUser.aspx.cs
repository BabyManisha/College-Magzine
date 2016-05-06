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

public partial class CommentUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Sravani36ConnectionString"].ConnectionString);
            String eid = DropDownList1.SelectedValue;
            String us = Convert.ToString(Session["user"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Comments values('" + eid + "','" + us + "','" + TextBox1.Text + "')", conn);
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

        }
        catch (Exception ex)
        {
            Response.Write("Database error...." + ex);
        }
    }
}