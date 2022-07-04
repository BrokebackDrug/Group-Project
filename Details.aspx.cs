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
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N12O8I6\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
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
    }
}