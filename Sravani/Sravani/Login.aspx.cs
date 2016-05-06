using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Data.Sql;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"]="";
        Session.Clear();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Sravani36ConnectionString"].ConnectionString);
            conn.Open();
                SqlCommand pcmd = new SqlCommand("Select Password from Login where RollNo = '" + TextBox1.Text + "'", conn);
                SqlDataReader dr = pcmd.ExecuteReader();
                while (dr.Read())
                {
                    string pass = dr["Password"].ToString();
                    if (pass == TextBox2.Text && pass=="sravani")
                    {
                        Session["user"] = TextBox1.Text;
                        Response.Redirect("HomeAdmin.aspx");
                    }
                    else if (pass == TextBox2.Text)
                    {
                        Session["user"] = TextBox1.Text;
                        Response.Redirect("HomeUser.aspx");
                    }
                    else
                    {
                        Response.Write("Invalid Password");
                    }
                }
        }
        catch (Exception ex)
        {
            Response.Write("Exception" + ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}