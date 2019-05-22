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
                BindDataDeal();
                string qt = string.Format("{0}", Request.QueryString["qty"]);
             }
        }
        private void BindData()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from restaurantProfile WITH (NOLOCK) where restaurantID=" + Request.QueryString["ID"];
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
            cmd.CommandText = "SELECT * from menuItems WITH (NOLOCK) where restaurantID=" + Request.QueryString["ID"];
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            RepeaterMenu.DataSource = objDS;
            RepeaterMenu.DataBind();

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "INSERT into orderDetails(restaurantID, quantity) values('" + Request.QueryString["ID"] + "')";
            cmd2.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();    
            
        }
        private void BindDataDeal()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT dealName,dealImage from promotionalDeals where restaurantID=" + Request.QueryString["ID"];
            cmd.CommandType = CommandType.Text;
            DataSet objDS = new DataSet();
            SqlDataAdapter objDA = new SqlDataAdapter();
            objDA.SelectCommand = cmd;
            con.Open();
            objDA.Fill(objDS);
            con.Close();
            RepeaterDeal.DataSource = objDS;
            RepeaterDeal.DataBind();
        }
        bool found = false;
        int tableno;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2JBDRTC\SQLEXPRESS;Initial Catalog=ProjectStuff;Integrated Security=True");

            string time1 = TextBoxCIN.Text;
            string time2 = TextBoxCOUT.Text;
            string date = TextBoxDate.Text;
            int persons = int.Parse(TextBoxPersons.Text);
            string discount = TextBoxD.Text;
            string name = TextBoxName.Text;

            //retrieving the data from addtable 
            string t = "SELECT TableNO,NoOfSeats FROM Add_Table  with (nolock)  ORDER BY NoOfSeats";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = t;
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd1;
            adapter.Fill(ds);
            con.Close();
            int count = ds.Tables[0].Rows.Count;

            string[,] tables = new string[count, 2];

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                tables[i, 0] = ds.Tables[0].Rows[i][0].ToString();
                tables[i, 1] = ds.Tables[0].Rows[i][1].ToString();

            }
            int RC = persons;
            int TC = 0;
            int desc = count;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                TC = TC + int.Parse(tables[i, 1]);
            }

            if (persons <= TC)
            {
                int[] booked = new int[count];
                int n = 0;
                int total = 0;
                string y = "select NoOfSeats from Add_Table WITH (NOLOCK) where TableNO NOT IN (select tableNo from tableReservation where arrivalTime >='" + time1 + "' and checkoutTime <= '" + time2 + "')";

                SqlCommand cmd5 = new SqlCommand();
                cmd5.Connection = con;
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = y;
                DataSet ds2 = new DataSet();
                con.Open();
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                adapter2.SelectCommand = cmd5;
                adapter2.Fill(ds2);
                con.Close();
                int count2 = ds2.Tables[0].Rows.Count;
                if (count2 != 0)
                {

                    string[] selected = new string[count2];

                    for (int q = 0; q < ds2.Tables[0].Rows.Count; q++)
                    {
                        selected[q] = ds2.Tables[0].Rows[q][0].ToString();
                        int selectTable = int.Parse(selected[q]);
                        total = total + selectTable;

                    }

                }

                if (persons <= total)
                {
                    while (RC != 0)
                    {

                        for (int j = 0; j < count; j++)
                        {

                            int seats = int.Parse(tables[j, 1]);
                            if (seats >= RC)
                            {
                                string v = "select arrivalTime,checkoutTime from tableReservation where tableNo='" + int.Parse(tables[j, 0]) + "' and date ='" + date + "'";
                                SqlCommand cmd2 = new SqlCommand();
                                cmd2.Connection = con;
                                cmd2.CommandType = CommandType.Text;
                                cmd2.CommandText = v;
                                con.Open();
                                DataSet ds1 = new DataSet();
                                SqlDataAdapter adapter1 = new SqlDataAdapter();
                                adapter1.SelectCommand = cmd2;
                                adapter1.Fill(ds1);
                                con.Close();
                                int count1 = ds1.Tables[0].Rows.Count;
                                if (count1 != 0)
                                {
                                    string[,] time = new string[count1, 2];
                                    for (int m = 0; m < ds1.Tables[0].Rows.Count; m++)
                                    {
                                        time[m, 0] = ds1.Tables[0].Rows[m][0].ToString();
                                        time[m, 1] = ds1.Tables[0].Rows[m][1].ToString();

                                    }
                                    DateTime X1 = DateTime.Parse(time1);
                                    DateTime X2 = DateTime.Parse(time2);
                                    bool notfound = false;
                                    for (int l = 0; l < count1; l++)
                                    {
                                        DateTime X = DateTime.Parse(time[l, 0]);
                                        DateTime Y = DateTime.Parse(time[l, 1]);
                                        int result1 = DateTime.Compare(X1, X);
                                        int result2 = DateTime.Compare(X2, Y);
                                        if (result1 > 0 || result1 == 0 && result2 < 0 || result2 == 0)
                                        {
                                            notfound = true;

                                            break;

                                        }

                                        else
                                        {
                                            notfound = false;
                                        }
                                    }
                                    if (notfound == true)
                                    {
                                        found = false;
                                        continue;

                                    }
                                    else
                                    {
                                        found = true;
                                        RC = int.Parse(tables[j, 1]) - RC;
                                        tableno = int.Parse(tables[j, 0]);
                                        booked[n] = tableno;
                                        SqlCommand cmd = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID,restaurantID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "','" + Request.QueryString["ID"] +"')", con);
                                        con.Open();
                                        cmd.ExecuteNonQuery();
                                        con.Close();
                                        break;
                                    }
                                }
                                else
                                {
                                    found = true;
                                    RC = int.Parse(tables[j, 1]) - RC;
                                    tableno = int.Parse(tables[j, 0]);
                                    booked[n] = tableno;
                                    SqlCommand cmd = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID,restaurantID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "','" + Request.QueryString["ID"] + "')", con);
                                    con.Open();
                                    cmd.ExecuteNonQuery();
                                    con.Close();
                                    break;
                                }
                            }
                            else
                            {
                                found = false;
                                continue;

                            }
                        }
                        if (found == false)
                        {
                            for (int k = desc - 1; k >= 0; k--)
                            {
                                string v = "select arrivalTime,checkoutTime from tableReservation where tableNo='" + int.Parse(tables[k, 0]) + "' and date ='" + date + "'";
                                SqlCommand cmd2 = new SqlCommand();
                                cmd2.Connection = con;
                                cmd2.CommandType = CommandType.Text;
                                cmd2.CommandText = v;
                                con.Open();
                                DataSet ds1 = new DataSet();
                                SqlDataAdapter adapter1 = new SqlDataAdapter();
                                adapter1.SelectCommand = cmd2;
                                adapter1.Fill(ds1);
                                con.Close();
                                int count1 = ds1.Tables[0].Rows.Count;
                                if (count1 != 0)
                                {
                                    string[,] time = new string[count1, 2];
                                    for (int m = 0; m < ds1.Tables[0].Rows.Count; m++)
                                    {
                                        time[m, 0] = ds1.Tables[0].Rows[m][0].ToString();
                                        time[m, 1] = ds1.Tables[0].Rows[m][1].ToString();

                                    }
                                    DateTime X1 = DateTime.Parse(time1);
                                    DateTime X2 = DateTime.Parse(time2);
                                    bool notfound = false;
                                    for (int l = 0; l < count1; l++)
                                    {
                                        DateTime X = DateTime.Parse(time[l, 0]);
                                        DateTime Y = DateTime.Parse(time[l, 1]);
                                        int result1 = DateTime.Compare(X1, X);
                                        int result2 = DateTime.Compare(X2, Y);
                                        if (result1 > 0 || result1 == 0 && result2 < 0 || result2 == 0)
                                        {
                                            notfound = true;
                                            break;

                                        }

                                        else
                                        {
                                            notfound = false;
                                        }
                                    }
                                    if (notfound == true)
                                    {
                                        desc--;
                                        continue;
                                    }
                                    else
                                    {
                                        desc--;
                                        found = true;
                                        RC = RC - int.Parse(tables[k, 1]);
                                        tableno = int.Parse(tables[k, 0]);
                                        booked[n] = tableno;
                                        SqlCommand cmd3 = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID,restaurantID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "','" + Request.QueryString["ID"] + "')", con);
                                        con.Open();
                                        cmd3.ExecuteNonQuery();
                                        con.Close();
                                        break;
                                    }
                                }
                                else
                                {
                                    desc--;
                                    found = true;
                                    RC = RC - int.Parse(tables[k, 1]);
                                    tableno = int.Parse(tables[k, 0]);
                                    booked[n] = tableno;
                                    SqlCommand cmd3 = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID,restaurantID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "','" + Request.QueryString["ID"] + "')", con);
                                    con.Open();
                                    cmd3.ExecuteNonQuery();
                                    con.Close();
                                    break;
                                }
                            }
                        }
                        n++;
                        RC--;
                    }
                    //Response.Redirect("restaurantDetails.aspx");
                }
                else
                {
                    //notify no table available
                }
            }
            else
            {
                //notify no of persons are more than the capacity available
            }

            Response.Redirect("restaurantDetails.aspx?ID=" + Request.QueryString["ID"]);
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT into restaurantFeedback(restCustomerFName,restCustomerLName,restCustomerEmail,restSubject,restFeedback,restaurantID)values('" + TBoxFName.Text + "','" + TBoxLName.Text + "','" + TBoxEmail.Text + "','"+ TBoxSub.Text+ "','"+TBoxMsg.Text+"','"+Request.QueryString["ID"]+"')";
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
    }
}

