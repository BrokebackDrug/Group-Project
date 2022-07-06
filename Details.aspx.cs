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
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
            //SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
            con.Open();
            String initialization = "select * from product where PRODUCT_ID ='" + Session["ProductID"] + "'";
            SqlCommand cmd = new SqlCommand(initialization, con);
            //DataSet ds = new DataSet();
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
                SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
                con.Open();
                String insertOrder = "insert into carts (ORDER_USERNAME, ORDER_PRODUCT_NAME, ORDER_PRODUCT_PRICE, ORDER_PRODUCT_IMAGE, ORDER_NUMBER) " +
                    "values (@USERNAME, @PRODUCT_NAME, @PRODUCT_PRICE, @PRODUCT_IMAGE, @NUMBER)";
                SqlCommand cmd = new SqlCommand(insertOrder, con);

                cmd.Parameters.AddWithValue("@USERNAME", "Bob");
                //cmd.Parameters.AddWithValue("@USERNAME", XXX.Text);
                cmd.Parameters.AddWithValue("@PRODUCT_NAME", Label1.Text);
                cmd.Parameters.AddWithValue("@PRODUCT_PRICE", Label3.Text.Substring(2));
                cmd.Parameters.AddWithValue("@PRODUCT_IMAGE", ProductImage.ImageUrl);
                cmd.Parameters.AddWithValue("@NUMBER", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();


                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Successfully add to cart!');</script>");
                if (int.Parse((String)Session["ProductID"]) <= 8)
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