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
                BindDataMenu();
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
                restName.Text = (sdr["restaurantName"].ToString());
                LabelBio.Text = (sdr["restaurantDescription"].ToString());
                openTime.Text = (sdr["restaurantOpeningTime"].ToString());
                closeTime.Text = (sdr["restaurantClosingTime"].ToString());
                address.Text = (sdr["restaurantAddress"].ToString());
                contactNo.Text = (sdr["restaurantContactNo"].ToString());
                restEmail.Text = (sdr["restaurantEmail"].ToString());

            }
            con.Close();
        }
        private void BindDataMenu()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from menuItems where restaurantID=" + Request.QueryString["ID"];
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            RepeaterMenu.DataSource = objDS;
            RepeaterMenu.DataBind();
        }
    }
}