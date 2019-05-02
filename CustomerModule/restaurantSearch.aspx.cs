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
    public partial class restaurantSearch : System.Web.UI.Page
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
            if (Request.QueryString["cName"] != null && Request.QueryString["cName"] != "" && Request.QueryString["rName"] != null && Request.QueryString["rName"] != "")
                cmd.CommandText = "SELECT * from  restaurantProfile INNER JOIN menuItems ON restaurantProfile.restaurantID = menuItems.restaurantID WHERE restaurantProfile.restaurantName= '" + Request.QueryString["rName"] + "' AND menuItems.itemName='" + Request.QueryString["cName"] + "'";
            else if (Request.QueryString["rName"] != null && Request.QueryString["rName"] != "")
                cmd.CommandText = "SELECT * from  restaurantProfile WHERE restaurantProfile.restaurantName= '" + Request.QueryString["rName"] + "'";

        else if (Request.QueryString["cName"]!=null && Request.QueryString["cName"] != "")
                cmd.CommandText = "SELECT * from  restaurantProfile INNER JOIN menuItems ON restaurantProfile.restaurantID = menuItems.restaurantID WHERE  menuItems.itemName='" + Request.QueryString["cName"] + "'";



            //cmd.CommandText = "SELECT * from  restaurantProfile INNER JOIN menuItems ON restaurantProfile.restaurantID = menuItems.restaurantID WHERE restaurantProfile.restaurantName= '"+Request.QueryString["rName"]+"' OR menuItems.itemName='"+Request.QueryString["cName"]+"'" ;
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            RepeaterImages.DataSource = objDS;
            RepeaterImages.DataBind();
        }
    }
}