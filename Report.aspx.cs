using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            String id = ((Label)e.Item.FindControl("lblid")).Text;
            MySqlConnection co = new MySqlConnection();
            co.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
            co.Open();
            MySqlCommand cm = new MySqlCommand();
            cm.CommandText = "delete from product where ID='" + id + "'";
            cm.CommandType = System.Data.CommandType.Text;
            cm.Connection = co;
            cm.ExecuteNonQuery();
            Response.Write("record delete");
            load();

            
        }

    }
    public void load()
    {

        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
        con.Open();
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = "select *from product";
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close();

    }
}