using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    public void MsgBox(String ex, Page pg, Object obj)
    {
        }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        
       string strcon = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";

        
        MySqlConnection conn = new MySqlConnection(strcon);
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("SELECT username, email,password  from signup where Username='" + txtuname.Text + "' and Email='"+txtemail.Text+"'and Password = '" + txtpass.Text + "'", conn);
        cmd.Parameters.AddWithValue("@username", txtuname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["UserName"] = txtuname.Text;
            Session["Pwd"] = txtpass.Text;
            Session["email"] = txtemail.Text;
            Response.Redirect("View.aspx");
            
        }
        else
        {
            Label1.Text = "user name and password are wrong";
        }

        conn.Close();

        
    }
    }
