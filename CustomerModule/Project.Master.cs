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
                if (Session["customerAccountID"] == null)
                {
                    NotLoggedIn.Visible = true;
                    LoggedIn.Visible = false;
                }
                else if (Session["customerAccountID"]!=null)
                {
                    NotLoggedIn.Visible = false;
                    LoggedIn.Visible = true;
                    BindData();
                }
        }

        private void BindData()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from customerAccount where customerAccountID=" + Session["customerAccountID"];
            cmd.CommandType = CommandType.Text;
            SqlDataReader sdr = null;
            con.Open();
            sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                CustomerName.Text = sdr["customerAccountUserName"].ToString();
            }
            con.Close();
        }
        protected void ButtonFeedbck_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT into adminFeedback(adminCustomerName, adminCustomerEmail, adminCustomerFeedback) values('" + TextBoxName.Text + "','" + TextBoxEmail.Text + "','" + TextBoxFeedback.Text + "')";
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
            TextBoxFeedback.Text = "";
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT customerAccountID, customerAccountUsername, customerAccountPassword,customerAccountEmail from customerAccount where customerAccountUsername='"+TextName.Text+"' AND customerAccountPassword='"+TextPass.Text+"'";
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable objDT = new DataTable();
            SqlDataAdapter objDA = new SqlDataAdapter(cmd);
            objDA.Fill(objDT);
            foreach (DataRow objDr in objDT.Rows)
            {
                Session["customerAccountID"] = objDr["customerAccountID"].ToString();
                Session["customerAccountEmail"] = objDr["customerAccountEmail"].ToString();
            }
            con.Close();
            if (Session["customerAccountEmail"] != null)
            {
                Page_Load(sender, e);
            }
            else
            {
                labelSignIn.Text = "Invalid Username or Password!!";
            }
        }
        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            SqlCommand objCmd = new SqlCommand();
            objCmd.Connection = con;
            objCmd.CommandText = "SELECT * from customerAccount WHERE customerAccountEmail= @customerAccountEmail";
            objCmd.CommandType = CommandType.Text;
            objCmd.Parameters.AddWithValue("@customerAccountEmail", TextBoxUserEmail.Text);
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = objCmd;
            objDA.Fill(objDS);
            if (objDS.Tables[0].Rows.Count > 0)
            {
                labelsignup.Text = "User Already Exists!!";
            }
            else
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT into customerAccount(customerAccountUsername,customerAccountPassword,customerAccountRptPassword,customerAccountEmail) values('" + TextBoxUsername.Text + "','" + TextBoxPassword.Text + "','" + TextBoxRptPassword.Text + "','" + TextBoxUserEmail.Text + "')";
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                labelsignup.Text = "SIGN UP SUCCESSFUL!!";
            }
        }
    }
}