using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Group_Project
{
    public partial class Login : System.Web.UI.Page
    {
        bool valid = true;
        SqlConnection con;
        string email;
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
        //check if this user exists
        protected bool search(string Email)
        {
            try
            {
                string strqry = "select * from CUSTOMER where USER_EMAIL=@Email";
                SqlCommand cmd = new SqlCommand(strqry, con);

                cmd.Parameters.AddWithValue("@Email", Email);
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
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        //select user status to check if it is the admin
        protected bool selectStatus(string Email)
        {
            try
            {
                string strqry = "select USER_STATUS from CUSTOMER where USER_EMAIL=@Email";

                SqlCommand cmd = new SqlCommand(strqry, con);
                cmd.Parameters.AddWithValue("@Email", Email);
                SqlDataReader r = cmd.ExecuteReader();
                r.Read();
                int statusColPos = r.GetOrdinal("USER_STATUS");
                int status = (int)r.GetDecimal(statusColPos); 
                if (status == 0)
                    return false;
                else
                    return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        //check if the password is consistent
        protected bool check(string Email, string Password)
        {
            try
            {
                string strqry = "select USER_PASSWORD from CUSTOMER where USER_EMAIL=@Email";

                SqlCommand cmd = new SqlCommand(strqry, con);
                cmd.Parameters.AddWithValue("@Email", Email);
                SqlDataReader r = cmd.ExecuteReader();
                r.Read();
                int passwordColPos = r.GetOrdinal("USER_PASSWORD");
                string passwd = r.GetString(passwordColPos);
                if (Password == passwd)
                {
                    email = Email;
                    r.Close();
                    return true;
                }
                else
                {
                    r.Close();
                    return false;
                }
            }
            catch(Exception ex)
            {
                return false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label4.Text = "THE E-MAIL ADDRESS FIELD IS REQUIRED.";
                valid = false;
            }
            else if (!search(TextBox1.Text))
            {

                Label4.Text = "THE USER IS NOT REGISTERED.";
                valid = false;
            }
            else
            {
                Label4.Text = "";
            }

            if (TextBox2.Text == "")
            {
                Label5.Text = "THE PASSWORD FIELD IS REQUIRED.";
                valid = false;
            }
            else if ( !check(TextBox1.Text, TextBox2.Text)&&search(TextBox1.Text))
            {
                Label5.Text = "THE PASSWORD IS NOT CORRECT";
                valid = false;
            }
            //log in successfully
            if (valid)
            { 
                Label5.Text = "";
                Session["UserName"] = email;
                if (selectStatus(email))
                    Response.Redirect("AdminHome.aspx");
                else
                    Response.Redirect("Home.aspx");

            }
        }
    }
}