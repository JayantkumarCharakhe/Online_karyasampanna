using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_PanditDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlDataSource2.InsertCommandType = SqlDataSourceCommandType.Text;
        //SqlDataSource2.InsertCommand = "INSERT INTO [Pandit_Details] ([pname], [pcontact], [paddress], [pemail], [parea]) VALUES (@name, @contact, @address, @email, @area)";

        //SqlDataSource2.InsertParameters.Add("name", txtname.Text);
        //SqlDataSource2.InsertParameters.Add("contact", txtmobile.Text);
        //SqlDataSource2.InsertParameters.Add("address", txtaddress.Text);
        //SqlDataSource2.InsertParameters.Add("email", txtemail.Text);
        //SqlDataSource2.InsertParameters.Add("area", txtarea.Text);

        SqlDataSource2.Insert();
        lblmsg.Text = "Details Added Successfully !";

        txtname.Text = "";
        txtmobile.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        ddlarea.SelectedIndex = 0;

        gvdetails.DataBind();
       
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = "SELECT * FROM [Pandit_Details]";
        lblmsg.Text = "Done";


    }
}