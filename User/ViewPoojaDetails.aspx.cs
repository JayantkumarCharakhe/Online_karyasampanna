using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_ViewPoojaDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlpooja_SelectedIndexChanged(object sender, EventArgs e)
    {
        //SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details] where pooja_name like'%"+ddlpooja.SelectedItem.ToString()+"%'";
        //lblmsg.Text = "Done";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details] where pooja_name like'%" + ddlpooja.SelectedItem.ToString() +"%'";
    }
    protected void ddlpooja_TextChanged(object sender, EventArgs e)
    {
       // SqlDataSource1.SelectCommand = "SELECT * FROM [Pooja_Details] where pooja_name like'%" + ddlpooja.SelectedItem.ToString() + "%'";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}