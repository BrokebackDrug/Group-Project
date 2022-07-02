using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=TANG\SQLEXPRESS;Initial Catalog=ShoeStore;Integrated Security=True");
                con.Open();
                string insertQuery = "insert into USER(USER_EMAIL, USER_PASSWORD, USER_FNAME, USER_LNAME, USER_STATUS)values (@EMAIL, @PASSWORD, @FNAME, @LNAME, @STATUS)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@EMAIL", TextBox3.Text);
                cmd.Parameters.AddWithValue("@PASSWORD", TextBox4.Text);
                cmd.Parameters.AddWithValue("@FNAME", TextBox1.Text);
                cmd.Parameters.AddWithValue("@LNAME", TextBox2.Text);
                cmd.Parameters.AddWithValue("@STATUS", 0);
                cmd.ExecuteNonQuery();
                Response.Write("New account created successfully!");
                con.Close();
            } 
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}