using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace Group_Project
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        DataTable dt = new DataTable("cart");
        DataColumn dc = new DataColumn("img");

        Hashtable ht;
        //DataTable dt;
        SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");

        SqlCommand cmd;
        SqlDataReader sdr;

        String name = "DMT1909203@xmu.edu.my";
        protected void Page_Load(object sender, EventArgs e)
        {
            //dt.Columns.Add(dc);
            //SqlDataAdapter Sqa = new SqlDataAdapter("select ORDER_PRODUCT_IMAGE from carts", con);
            //Sqa.Fill(dt);

            //name = (String)Session["UserName"];
            Double total_price = 0.0;

            if (true)
            {
                Bind();
            }

        }

        public void Bind() { 

        }

        protected void Clear_cart(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                String clearOrders = "delete from carts where ORDER_USERNAME = '" + name + "'";
                SqlCommand cmd = new SqlCommand(clearOrders, con);

                cmd.ExecuteNonQuery();
            
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Successfully clear the cart!');</script>");
                Response.Redirect("Home.aspx");

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Add_One(object sender, EventArgs e)
        {
            try
            {
                string id = ((Button)sender).CommandArgument;
                int num = getNumber(id) + 1;

                con.Open();
                String updateOrder = "update carts set ORDER_NUMBER = " + num
                    + " where ORDER_USERNAME = '" + name + "'"
                    + " and ORDER_ID = '" + id + "'";

                cmd = new SqlCommand(updateOrder, con);
                cmd.ExecuteNonQuery();
                con.Close();

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
                string id = ((Button)sender).CommandArgument;
                int num = getNumber(id) - 1;

                con.Open();
                String updateOrder = "update carts set ORDER_NUMBER = " + num
                    + " where ORDER_USERNAME = '" + name + "'"
                    + " and ORDER_ID = '" + id + "'";

                cmd = new SqlCommand(updateOrder, con);
                cmd.ExecuteNonQuery();
                con.Close();

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

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}