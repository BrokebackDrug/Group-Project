using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Group_Project
{
    public partial class Details : System.Web.UI.Page
    {
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
            con.Open();
            String initialization = "select * from product where PRODUCT_ID ='" + Session["ProductID"] + "'";
            SqlCommand cmd = new SqlCommand(initialization, con);
            SqlDataReader dr = cmd.ExecuteReader();
            String image;
            decimal price;
            int stock;
            if (dr.Read())
            {
                this.Label1.Text = dr.GetString(dr.GetOrdinal("PRODUCT_NAME"));
                //image = dr.GetString(dr.GetOrdinal("PRODUCT_IMAGE"));
                image = dr.GetString(dr.GetOrdinal("PRODUCT_IMAGE"));
                this.ProductImage.ImageUrl = "images/" + image;
                this.Label2.Text = dr.GetString(dr.GetOrdinal("PRODUCT_DESCRIPTION"));
                price = dr.GetDecimal(dr.GetOrdinal("PRODUCT_PRICE"));
                this.Label3.Text = "$ "+price + "";
                stock = dr.GetInt32(dr.GetOrdinal("PRODUCT_STOCK"));
                this.Label4.Text =  stock + " in stock";

            }

            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                name = "Bob";
                SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
                con.Open();
                String selectOrder = "select * from carts where ORDER_USERNAME = '" + name + "'"
                    + " and ORDER_PRODUCT_NAME = '" + Label1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(selectOrder, con);
                SqlDataReader dr = cmd1.ExecuteReader();
                bool insertNew = false;


                if (dr.Read())
                {
                    insertNew = true;
                    String updateOrder = "update carts set ORDER_NUMBER = " + DropDownList1.SelectedValue
                        + " where ORDER_USERNAME = '" + name + "'"
                        + " and ORDER_PRODUCT_NAME = '" + Label1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(updateOrder, con);

                    dr.Close();
                    cmd2.ExecuteNonQuery();
                }
                else
                {
                    String insertOrder = "insert into carts (ORDER_USERNAME, ORDER_PRODUCT_NAME, ORDER_PRODUCT_PRICE, ORDER_PRODUCT_IMAGE, ORDER_NUMBER) " +
                    "values (@USERNAME, @PRODUCT_NAME, @PRODUCT_PRICE, @PRODUCT_IMAGE, @NUMBER)";
                    SqlCommand cmd2 = new SqlCommand(insertOrder, con);
                    dr.Close();

                    cmd2.Parameters.AddWithValue("@USERNAME", "Bob");
                    //cmd.Parameters.AddWithValue("@USERNAME", XXX.Text);
                    cmd2.Parameters.AddWithValue("@PRODUCT_NAME", Label1.Text);
                    cmd2.Parameters.AddWithValue("@PRODUCT_PRICE", Label3.Text.Substring(2));
                    cmd2.Parameters.AddWithValue("@PRODUCT_IMAGE", ProductImage.ImageUrl);
                    cmd2.Parameters.AddWithValue("@NUMBER", DropDownList1.SelectedValue);
                    cmd2.ExecuteNonQuery();
                }

                
                con.Close();
                if (insertNew)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Successfully add to cart!');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Successfully update the cart!');</script>");
                }

                if (int.Parse((String)Session["ProductID"]) <=4 || (8<=int.Parse((String)Session["ProductID"]) && int.Parse((String)Session["ProductID"]) <= 11))
                {
                    Response.Redirect("Man.aspx");
                }
                else
                {
                    Response.Redirect("Woman.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}