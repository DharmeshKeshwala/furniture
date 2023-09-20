using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class registrationform : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
        con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd = new MySqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        con.Close();
        con.Open();
        cmd.CommandText = "INSERT INTO signup(username,email,mobileno,password) VALUES('" + txtusername.Text + "','" + txtemail.Text + "','"+txtmobile.Text+"','" + txtpassword.Text + "')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        

        Label1.Text = "successfull loging";
    }
}