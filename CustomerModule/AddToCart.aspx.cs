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
            cmd.CommandText = "SELECT * from menuItems WHERE itemID=" + Request.QueryString["cID"] ;
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            rptCart.DataSource = objDS;
            rptCart.DataBind();
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            Button save = (sender as Button);
            RepeaterItem item = save.NamingContainer as RepeaterItem;

            con.Open();
            SqlTransaction sqlTran;
            sqlTran = con.BeginTransaction();
            SqlCommand cmd = con.CreateCommand();
            cmd.Transaction = sqlTran;
            foreach (RepeaterItem rptItem in rptCart.Items)
            {
                string itemName = (rptItem.FindControl("itemName") as Label).Text;
                string itemQuantity = (rptItem.FindControl("itemQuantity") as TextBox).Text;
                string itemPrice = (rptItem.FindControl("itemPrice") as Label).Text;
                cmd.CommandText = "INSERT into homeDelivery(customerName,customerAddress,customerContact,customerAltContact,customerSInfo,customerID) values('" + TextBoxName.Text + "','" + TextBoxAddress.Text + "','" + TextBoxContact.Text + "','" + TextBoxAltContact.Text + "','" + TextBoxDetails.Text + "','" + Session["customerAccountID"] + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "INSERT into cart(itemName,itemQuantity,itemPrice,customerID,productID) values('" + itemName + "','" + int.Parse(itemQuantity) + "','" + int.Parse(itemPrice) + "','" + Session["customerAccountID"] + "','" + Request.QueryString["cID"] + "')";
                cmd.ExecuteNonQuery();
            }

            sqlTran.Commit();
            con.Close();
            Response.Redirect("~/Done.aspx");
        }
   /*     protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            string itemName = ((sender as Button).NamingContainer.FindControl("itemName") as Label).Text;
            string constr = ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM cart WHERE itemName = @itemName", con))
                {
                    cmd.Parameters.AddWithValue("@itemName", itemName);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    */
        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["rID"] != null)
            {
                Response.Redirect("~/restaurantDetails.aspx?ID=" + Request.QueryString["rID"]);
            }
        }
    }
}