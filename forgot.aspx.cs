using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        try
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString ="SERVER=localhost;DATABASE=furniture;UID=root;password=;";
        con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd = new MySqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        con.Close();
        con.Open();
        cmd.CommandText = "UPDATE adminlogin SET password='"+TextBox2.Text+"' WHERE username='"+TextBox1.Text+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        
    }
        catch
        {
            Label1.Text = "invelid";
    }

    }
}