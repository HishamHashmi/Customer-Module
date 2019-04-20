using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace CustomerModule
{
    public partial class Home : System.Web.UI.Page
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
            cmd.CommandText = "SELECT itemName, itemImage from menuItems";
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            RepeaterHomeSlider.DataSource = objDS;
            RepeaterHomeSlider.DataBind();
        }
        [System.Web.Services.WebMethod(), System.Web.Script.Services.ScriptMethod()]
        public static List<string> restaurantData(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT restaurantName from restaurantProfile where restaurantName Like @restaurantName+ '%'", con);
            cmd.Parameters.AddWithValue("@restaurantName", prefixText);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            sda.Fill(dt);
            List<string> Name = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Name.Add(dt.Rows[i][0].ToString());
            }
            con.Close();
            return Name;
        }

        [System.Web.Services.WebMethod(), System.Web.Script.Services.ScriptMethod()]

        public static List<string> cuisineData(string prefixText)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT itemName from menuItems where itemName Like @itemName+ '%'", con);
            cmd.Parameters.AddWithValue("@itemName", prefixText);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            sda.Fill(dt);
            List<string> Name = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Name.Add(dt.Rows[i][0].ToString());
            }
            con.Close();
            return Name;
        }
    }
}