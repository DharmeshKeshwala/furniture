using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Adminlogin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string strcon = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";

        
        MySqlConnection conn = new MySqlConnection(strcon);
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("SELECT username, password from adminlogin where Username='" + txtuser.Text + "' and Password = '" + txtpass.Text + "'", conn);
        cmd.Parameters.AddWithValue("@username", txtuser.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("ViewOrder.aspx");
        }
        else
        {
            Label1.Text = "user name and password are wrong";
        }

        conn.Close();
      

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgot.aspx");
    }
}