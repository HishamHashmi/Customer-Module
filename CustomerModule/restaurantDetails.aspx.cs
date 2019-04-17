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
    public partial class restaurantDetails : System.Web.UI.Page
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
            cmd.CommandText = "SELECT * from restaurantProfile where restaurantID=" +Request.QueryString["ID"];
            cmd.CommandType = CommandType.Text;
            SqlDataReader sdr = null;
            con.Open();
            sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                LabelBio.Text = (sdr["restaurantDescription"].ToString());
                openTime.Text = (sdr["restaurantOpeningTime"].ToString());
                closeTime.Text = (sdr["restaurantClosingTime"].ToString());
                address.Text = (sdr["restaurantAddress"].ToString());
                contactNo.Text = (sdr["restaurantContactNo"].ToString());
                restEmail.Text = (sdr["restaurantEmail"].ToString());

            }
            con.Close();
        }
    }
}