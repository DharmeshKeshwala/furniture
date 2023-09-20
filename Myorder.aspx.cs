using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Myorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Session["UserName"] != null && Session["Pwd"] != null)
            {


                lblcname.Text = Session["UserName"].ToString();
                lblpass.Text = Session["Pwd"].ToString();
            }
            load();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        

    }
    public void delete()
    {
      
    }
    public void load()
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;PASSWORD=;";
        MySqlCommand cmd =new MySqlCommand();
        cmd.Connection=con;
        cmd.CommandText = "select *from od WHERE cname='"+lblcname.Text+"' AND pass='"+lblpass.Text+"'";
        con.Open();
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close();

    }

}