﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ViewPanditDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [Pandit_Details] where parea like'%" + ddlarea.SelectedItem.ToString() + "%'";
    }
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Book.aspx?pid="+gvdetails.SelectedRow.Cells[1].Text.ToString());

    }
}