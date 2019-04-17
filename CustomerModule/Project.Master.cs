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
    public partial class Project : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectStuffConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonFeedbck_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT into adminFeedback(adminCustomerName, adminCustomerEmail, adminCustomerFeedback) values('"+TextBoxName.Text+"','"+TextBoxEmail.Text+"','"+TextBoxFeedback.Text+"')";
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
            TextBoxFeedback.Text = "";
        }
    }
}