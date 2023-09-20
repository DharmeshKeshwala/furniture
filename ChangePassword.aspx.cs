using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserName"] != null && Session["UserName"] != null && Session["email"] != null)
            {
                // Displaying stored email  
                txtemail.Text = Session["email"].ToString();
                txtusername.Text = Session["UserName"].ToString();
            }
            
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
        con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = "UPDATE signup SET password='" + txtpass.Text + "' WHERE username='" + txtusername.Text + "' AND email='"+txtemail.Text+"'";
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

          MySqlConnection co = new MySqlConnection();
          co.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
          co.Open();
          MySqlCommand cm = new MySqlCommand();
          cm.CommandText = "UPDATE od SET pass='" + txtpass.Text + "' WHERE cname='" + txtusername.Text + "' AND email='"+txtemail.Text+"'";
          cm.CommandType = System.Data.CommandType.Text;
          cm.Connection = co;
          cm.ExecuteNonQuery();
          Response.Write("password update");
    }
   
}