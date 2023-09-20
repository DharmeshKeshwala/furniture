using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class View : System.Web.UI.Page{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loaddata();
            if (Session["UserName"] != null && Session["UserName"] != null && Session["email"] != null)
            {
                // Displaying stored email  
               
                txtcname.Text = Session["UserName"].ToString();
                txtemail.Text = Session["email"].ToString();
                txtpass.Text = Session["Pwd"].ToString();
            }
        }
    }
    protected void RepeatInformation_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
         if (e.CommandName == "up")
        {
            try
            {
                String image = ((Label)e.Item.FindControl("lblimage")).Text;
                String pname = ((TextBox)e.Item.FindControl("txtpname")).Text;
                String price = ((TextBox)e.Item.FindControl("txtprice")).Text;
                
                String qunatity = ((DropDownList)e.Item.FindControl("dwquantity")).Text;
                int total = Convert.ToInt32(price) * Convert.ToInt32(qunatity);
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "SERVER=localhost;DATABASE=furniture;UID=root;password=;";
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "INSERT INTO od(image,pname,price,cname,pass,email,quantity,total) VALUES('" + image + "','" + pname + "','" + price + "','" +txtcname.Text+ "','"+txtpass.Text+"','"+txtemail.Text+"','" + qunatity + "','" + total + "')";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("record save");
                
            }
            catch (Exception ex)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>" + ex.Message + "</div>");
            }
        }
       

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