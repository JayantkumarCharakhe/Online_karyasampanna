using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;

/// <summary>
/// Summary description for BasicCode
/// </summary>
public class BasicCode
{

    public string generateID(string col, string tbl)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select " + col + " from  " + tbl + " order by " + col + " desc";
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();
        if (obj == null)
        {
            return "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            return n.ToString();
        }

    }


   


}