using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Group_Project
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        DataTable dt = new DataTable("cart");
        DataColumn dc = new DataColumn("img");

        Hashtable ht;
        //DataTable dt;
        SqlConnection con = new SqlConnection(@"Data Source=TANG;Initial Catalog=ShoeStore;Integrated Security=True");

        SqlCommand cmd;
        SqlDataReader sdr;

        String name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            name = (String)Session["UserName"];
            int price = 0;
            int number = 0;
            int total_price = 0;

            if(GridView1.Rows.Count!=0)
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    price = int.Parse(row.Cells[1].Text);
                    number = int.Parse(row.Cells[3].Text);
                    total_price += price * number;
                }
                Label1.Text = "All the orders are displayed here";
                Label3.Text = total_price.ToString();
            }
            else
            {
                Button1.Enabled = false;
                Label1.Text = "The cart is empty now";
                Label3.Text = "0";
            }
        }


        protected void Clear_cart(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                String clearOrders = "delete from carts where ORDER_USERNAME = '" + name + "'";
                SqlCommand cmd = new SqlCommand(clearOrders, con);

                cmd.ExecuteNonQuery();

                MessageBox.Show("Transaction success!\n" +
                    "Totally " + Label3.Text + " is paid!");
                Response.Redirect("ShoppingCart.aspx");

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }


        }

        protected void Add_One(object sender, EventArgs e)
        {
            try
            {
                string id = ((System.Web.UI.WebControls.Button)sender).CommandArgument;
                int num = getNumber(id) + 1;

                if(num < 11)
                {
                    con.Open();
                    String updateOrder = "update carts set ORDER_NUMBER = " + num
                        + " where ORDER_USERNAME = '" + name + "'"
                        + " and ORDER_ID = '" + id + "'";

                    cmd = new SqlCommand(updateOrder, con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    MessageBox.Show("Addition success!");
                }
                else
                {
                    MessageBox.Show("Please don't exceed 10!");
                }
                Response.Redirect("ShoppingCart.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }

        protected void Minus_One(object sender, EventArgs e)
        {
            try
            {
                string id = ((System.Web.UI.WebControls.Button)sender).CommandArgument;
                int num = getNumber(id) - 1;

                if(num > 0)
                {
                    con.Open();
                    String updateOrder = "update carts set ORDER_NUMBER = " + num
                        + " where ORDER_USERNAME = '" + name + "'"
                        + " and ORDER_ID = '" + id + "'";

                    cmd = new SqlCommand(updateOrder, con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    MessageBox.Show("Deduction success!");
                }
                else
                {
                    MessageBox.Show("Please don't be smaller than 1!");
                }

                Response.Redirect("ShoppingCart.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }

        protected int getNumber(String id)
        {
            int n = 0;
            con.Open();
            String selectByID = "select * from carts where ORDER_ID = " + id;
            SqlCommand cmd = new SqlCommand(selectByID, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                n = reader.GetInt32(5);
            }
            con.Close();
            return n;
        }

        protected void GridView1_RowDeleted1(object sender, GridViewDeletedEventArgs e)
        {
            MessageBox.Show("Deletion success!");
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}