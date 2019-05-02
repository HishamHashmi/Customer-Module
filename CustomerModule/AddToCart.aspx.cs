using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace CustomerModule
{
    public partial class AddToCart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from menuItems WHERE itemID=" + Request.QueryString["ID"];
            cmd.CommandType = CommandType.Text;
            SqlDataReader sdr = null;
            con.Open();
            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                LabelItem.Text = (sdr["itemName"].ToString());
                LabelPrice.Text = (sdr["itemPrice"].ToString());
                LabelTPrice.Text = sdr["itemPrice"].ToString(); ;
            }
            con.Close();

        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
               SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT into homeDelivery(customerName,customerAddress,customerContact,customerAltContact,customerSInfo, customerID, itemID, itemName) values('" + TextBoxName.Text + "','" + TextBoxAddress.Text + "','" + TextBoxContact.Text + "','" + TextBoxAltContact.Text + "','" + TextBoxDetails.Text + "','" + Session["customerAccountID"] + "','" + Request.QueryString["ID"] + "','"+LabelItem.Text+"')";
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("done.aspx");
        }
    }
}