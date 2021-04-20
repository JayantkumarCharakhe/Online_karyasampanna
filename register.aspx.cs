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
    protected void GenerateID()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();

        //code to Fetch Current id Present in database using function//

        cmd.CommandText = "Select id from Registration ORDER BY id DESC";

        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            hfID.Value = "1";

        }
        else
        {
            hfID.Value = (Convert.ToInt32(obj) + 1).ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = 0;
        
        GenerateID();


        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();

        String path = Server.MapPath("User");
        string fname = FileUpload1.FileName;
        x = fname.IndexOf(".");
        string ext = fname.Substring(x);
        string filename = "P" + "_" + hfID.Value + ext;

        //Code for file upload//
        string xpath = path + "\\photo\\" + filename;
        FileUpload1.SaveAs(xpath);

        //Code for Insert the information into registration table//
        cmd.CommandText = "Insert into Registration (id,name,phon,email,username,question,answer,password,photo) values(@id,@nm,@ph,@em,@u,@q,@a,@pwd,@fp)";
        cmd.Parameters.AddWithValue("@id", hfID.Value);
        cmd.Parameters.AddWithValue("@nm", txtname.Text);
        cmd.Parameters.AddWithValue("@ph", txtphone.Text);
        cmd.Parameters.AddWithValue("@em", txtmail.Text);
        cmd.Parameters.AddWithValue("@u", txtusername.Text);
        cmd.Parameters.AddWithValue("@q", ddlquestion.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@a", txtAnswer.Text);
        cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
        cmd.Parameters.AddWithValue("@fp", filename);
       
       
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Registration sucessfull";
        txtname.Text = "";
        txtphone.Text = "";
        txtpwd.Text = "";
        txtAnswer.Text = "";
        txtusername.Text = "";
        txtmail.Text = "";

        Response.Redirect("Success.aspx");
    }

    //Code to check whether the username is present or not//
    protected void txtusername_TextChanged1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from Registration where username=@u";
        cmd.Parameters.AddWithValue("@u", txtusername.Text);
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            lblmsg1.Text = " ";
        }
        else
        {
            lblmsg1.Text = "Username already exists";
            btnRegister.Enabled = false;

        }
        con.Close();
    }
}