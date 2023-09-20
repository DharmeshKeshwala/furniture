using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Mycart : System.Web.UI.Page
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
        if (e.CommandName == "delete")
        {
            try
            {
                String id = ((Label)e.Item.FindControl("lblid")).Text;
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
                MySqlCommand cmd = new MySqlCommand();
                con.Open();
                cmd.CommandText = "DELETE FROM od WHERE  ID='" + id + "'";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("delete succesfulliy");
                load();

            }
            catch (Exception ex)
            {

                Response.Write("error ganerate" + ex);
            }

        }
    }
    public void load()
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;PASSWORD=;";
        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select *from od where cname='"+lblcname.Text+"' and pass='"+lblpass.Text+"'";
        con.Open();
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close();

    }

}