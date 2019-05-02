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
                SqlDataReader sdr = null;
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    itemName.Text = (sdr["itemName"].ToString());
                    customerNameLbl.Text = (sdr["customerName"].ToString());
                    contactlbl.Text = (sdr["customerContact"].ToString());
                    addressLbl.Text = sdr["customerAddress"].ToString(); ;
                }
                con.Close();
            }
        }
    }
}