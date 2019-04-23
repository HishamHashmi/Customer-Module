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
                if (Session["customerAccountID"]!=null)
                {
                    string id = Session["customerAccountID"].ToString();
                    int ID = int.Parse(id);
                 }
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
            string time1 = TextBoxCIN.Text;
            string time2 = TextBoxCOUT.Text;
            string date = TextBoxDate.Text;
            int persons = int.Parse(TextBoxPersons.Text);
            string discount = TextBoxD.Text;
            string name = TextBoxName.Text;

            //retrieving the data from addtable 
            string t = "SELECT TableNO,NoOfSeats FROM Add_Table ORDER BY NoOfSeats";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = t;
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd1;
            adapter.Fill(ds);
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
                string y = "select NoOfSeats from Add_Table where TableNO NOT IN (select tableNo from tableReservation where arrivalTime >='" + time1 + "' and checkoutTime <= '" + time2 + "')";

                SqlCommand cmd5 = new SqlCommand();
                cmd5.Connection = con;
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = y;
                DataSet ds2 = new DataSet();
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                adapter2.SelectCommand = cmd5;
                adapter2.Fill(ds2);
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
                                DataSet ds1 = new DataSet();
                                SqlDataAdapter adapter1 = new SqlDataAdapter();
                                adapter1.SelectCommand = cmd2;
                                adapter1.Fill(ds1);
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
                                        SqlCommand cmd = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "')", con);
                                        cmd.ExecuteNonQuery();
                                        break;
                                    }


                                }
                                else
                                {
                                    found = true;
                                    RC = int.Parse(tables[j, 1]) - RC;
                                    tableno = int.Parse(tables[j, 0]);
                                    booked[n] = tableno;
                                    SqlCommand cmd = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "')", con);
                                    cmd.ExecuteNonQuery();
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
                                DataSet ds1 = new DataSet();
                                SqlDataAdapter adapter1 = new SqlDataAdapter();
                                adapter1.SelectCommand = cmd2;
                                adapter1.Fill(ds1);
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
                                        SqlCommand cmd3 = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "')", con);
                                        cmd3.ExecuteNonQuery();
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
                                    SqlCommand cmd3 = new SqlCommand("insert into tableReservation(arrivalTime,checkoutTime,NoOfPersons,discountID,date,customerName,tableNo,customerID) values('" + time1 + "', '" + time2 + "','" + persons + "','" + discount + "','" + date + "','" + name + "','" + tableno + "','" + Session["customerAccountID"] + "')", con);
                                    cmd3.ExecuteNonQuery();
                                    break;
                                }
                            }
                        }
                        n++;
                    }
                }
                /* if (RC == 0)
                 {
                     for (int x = 0; x < n; x++)
                     {
                         tableno = booked[x];
                         SqlCommand cmd3 = new SqlCommand("insert into reservation(ArrivalTime,CheckoutTime,NoOfPersons,DiscountID,Date,CustomerName,TableNO) values('" + time1 + "', '" + time2 + "','" + RC + "','" + discount + "','" + date + "','" + name + "','" + tableno + "')", con);
                         cmd3.ExecuteNonQuery();
                     }
                 }
                 else
                 {
                     Response.Write("no table found");
                 }*/
            }

            con.Close();
            Response.Redirect("restaurantDetails.aspx");
        }
    }
}