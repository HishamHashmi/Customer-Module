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
    public partial class Done : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString);
         protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * from homeDelivery";
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader sdr = null;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    LabelID.Text = (sdr["orderID"].ToString());
                    Labelcustomer.Text = (sdr["customerName"].ToString());
                    Labelcontact.Text = (sdr["customerContact"].ToString());
                    Labeladdress.Text = sdr["customerAddress"].ToString(); ;
                }
                con.Close();
            }
        }
    }
}