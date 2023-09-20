﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Allfurniture : System.Web.UI.Page
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loaddata();
        }
        
    }

    protected void RepeatInformation_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Response.Redirect("Login.aspx");

    }
    public void loaddata()
    {
        MySqlConnection con1 = new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        con1.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
        cmd.Connection = con1;
        cmd.CommandText = "select * from product";
        con1.Open();
        RepeatInformation.DataSource = cmd.ExecuteReader();
        RepeatInformation.DataBind();
        /* DataList1.DataSource = cmd.ExecuteReader();
         DataList1.DataBind();*/
        con1.Close();
    }
}