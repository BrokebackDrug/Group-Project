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
        Hashtable ht;
        DataTable dt;
        //SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader sdr;

        String name = "Bob";
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = "Bob";
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
                String clearOrders = "delete from carts";

                //String clearOrders = "delete from carts where ORDER_USERNAME = 'Bob'";
                SqlCommand cmd = new SqlCommand(clearOrders, con);

                //cmd.Parameters.AddWithValue("@_USERNAME", "Bob"); 
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
    }
}