using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UpdatePanel updatePanel = Page.Master.FindControl("UpdatePanel1") as UpdatePanel;
        UpdatePanelControlTrigger trigger = new PostBackTrigger();
        trigger.ControlID = Button1.UniqueID;
        updatePanel.Triggers.Add(trigger);

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
             if (FileUpload1.HasFile)
        {
            MySqlConnection con = new MySqlConnection("SERVER=localhost;DATABASE=furniture;UID=root;password=;");
            string strname = FileUpload1.FileName.ToString();
            string filepath = "product/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/product/") + strname);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("INSERT INTO product(productname,price,description,image) VALUES('" + txtproductname.Text + "','" + txtprice.Text + "','" + txtdescription.Text + "','" + filepath + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label5.Text = "product successfuliy add";
        }
        else
        {
            Label5.Text = "Product was not add";
        }

    }
}