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
        SqlConnection con = new SqlConnection(@"Data Source=TS\SQLEXPRESS;Initial Catalog=shoestore;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
            //if (!IsPostBack)
            //{
            //    Bind();
            //}
        }
        //public void Bind()
        //{

        //    con.Open();
        //    string SelectQuery = "select * from product";
        //    //SqlCommand cmd = new SqlCommand(selectQuery, con);

        //    SqlDataAdapter myda = new SqlDataAdapter(SelectQuery, con);
        //    System.Data.DataSet myds = new DataSet();
        //    myda.Fill(myds, "product");
        //    //GridView1.DataSource = myds;
        //    GridView1.DataKeyNames = new string[] { "PRODUCT_ID" };//primary kay
        //    GridView1.DataBind();
        //    con.Close();
        //    //GridView1.EditIndex = -1;



        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
               // SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
                con.Open();
                string insertQuery = "insert into product(PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_STOCK, PRODUCT_TYPE, PRODUCT_IMAGE) values (@NAME, @DESCRIPTION, @PRICE, @STOCK, @TYPE, @IMAGE)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DESCRIPTION", TextBox2.Text);
                cmd.Parameters.AddWithValue("@PRICE", TextBox3.Text);
                cmd.Parameters.AddWithValue("@STOCK", TextBox4.Text);
                cmd.Parameters.AddWithValue("@TYPE", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@IMAGE", FileUpload1.FileName);
                cmd.ExecuteNonQuery();

                //Response.Write("Successfully add new product!");
                con.Close();
                Response.Redirect("AdminDisplay.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }
    }
}