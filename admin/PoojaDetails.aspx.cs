using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class PoojaDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string fimg;
        fimg = fphoto.FileName;
        fphoto.SaveAs(Server.MapPath("admin_img") + "\\" + fimg.ToString());

        //string uimg;
        //uimg = fphoto.FileName;
       // fphoto.c(Server.MapPath("User") + "\\" +("photo")+ fimg.ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into Pooja_Details(pooja_name,pooja_details,pcost,photo) values (@pooja_name,@pooja_details,@pcost,@photo)";
        cmd.Parameters.AddWithValue("@pooja_name", ddlpooja.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@pooja_details", txtsamgri.Text);
        cmd.Parameters.AddWithValue("@pcost", txtcost.Text);
        cmd.Parameters.AddWithValue("@photo", fimg.ToString());
        
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        {
            lblmsg.Text = "Details Added Successfully !";
        }
        con.Close();
       txtcost.Text="";
       txtsamgri.Text = "";
       ddlpooja.SelectedIndex = 0;

       GridView1.DataBind();
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details]";
        
    }
    protected void btnshow_Click1(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details]";
       

    }
    protected void btnshow_Click2(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details]";
       // lblmsg.Text = "Done";
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}