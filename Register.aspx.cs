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
        bool valid = true;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(@"Data Source=TANG;Initial Catalog=ShoeStore;Integrated Security=True");
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected bool search(string EMAIL)
        {
            try
            {
                string strqry = "select * from CUSTOMER where USER_EMAIL=@Email";
                SqlCommand cmd = new SqlCommand(strqry, con);

                cmd.Parameters.AddWithValue("@Email", EMAIL);
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    r.Close();
                    return true;
                }
                else
                {
                    r.Close();
                    return false;
                }
            }catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
                return false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
       {
            try
            {
              
                if(TextBox1.Text=="")
                {
                    Label7.Text = "FIRST NAME REQUIRED";
                    valid = false;
                }
                else
                {
                    Label7.Text = "";
                }
                if(TextBox2.Text=="")
                {
                    Label8.Text = "LAST NAME REQUIRED";
                    valid = false;
                }
                else
                {
                    Label8.Text = "";
                }
                if(TextBox3.Text=="")
                {
                    Label9.Text = "EMAIL REQUIRED";
                    valid = false;
                }
                else if(search(TextBox3.Text))
                {
                    Label9.Text = "ALREADY EXISTED";
                    valid = false;
                }
                else
                {
                    Label9.Text = "";
                }
                if(TextBox4.Text=="")
                {
                    Label10.Text = "PASSWORD REQUIRED";
                    valid = false;
                }
                else
                {
                    Label10.Text = "";
                }
                if(TextBox5.Text=="")
                {
                    Label11.Text = "CONFIRM  REQUIRED";
                    valid = false;
                }
                else if(TextBox5.Text!=TextBox4.Text)
                {
                    Label11.Text = "DOESN'T MATCH";
                    valid = false;
                }
                else
                {
                    Label11.Text = "";
                }
                //注册成功 成功后操作写这
                if (valid)
                {
                    string insertQuery = "insert into CUSTOMER (USER_EMAIL, USER_PASSWORD, USER_FNAME, USER_LNAME, USER_STATUS) values (@EMAIL, @PASSWORD, @FNAME, @LNAME, @STATUS)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@EMAIL", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@PASSWORD", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@FNAME", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LNAME", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@STATUS", 0);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
                con.Close();
            } 
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

    }
}