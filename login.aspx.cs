using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == "admin" && txtpwd.Text == "super")
        {
            Response.Redirect("admin\\Default.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select username from Registration where username=@un AND password=@pwd";
            cmd.Parameters.AddWithValue("@un", txtusername.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            cmd.Connection = con;
            object obj = cmd.ExecuteScalar();
            if (obj == null)
            {
                lblmsg.Text = "Username or Password is Incorrect!!!";
            }
            else
            {
                Session.Add("username", txtusername.Text);
                Session.Add("pwd", txtpwd.Text);
                lblmsg.Text = "Welcome!!!";
                Response.Redirect("User\\Default.aspx");

            }
        }

       
    }
}