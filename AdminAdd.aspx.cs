using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Group_Project
{
    public partial class AdminAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shorestore;Integrated Security=True");
                con.Open();
                string insertQuery = "insert into product info(PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_STOCK, PRODUCT_TYPE, PRODUCT_IMAGE) values (@NAME, @DESCRIPTION, @PRICE, @STOCK, @TYPE, @IMAGE)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DESCRIPTION", TextBox2.Text);
                cmd.Parameters.AddWithValue("@PRICE", TextBox3.Text);
                cmd.Parameters.AddWithValue("@STOCK", TextBox4.Text);
                cmd.Parameters.AddWithValue("@TYPE", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@IMAGE", TextBox5.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Successfully add new product!");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }
    }
}