using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Group_Project
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = DESKTOP - N12O8I6\SQLEXPRESS; Initial Catalog = test; Integrated Security = True");
            con.Open();
            String initialization = "select from ";
            SqlCommand cmd = new SqlCommand(initialization, con);

            cmd.ExecuteNonQuery();
            this.Label1.Text = cmd.ExecuteScalar().ToString();
            con.Close();
        }
    }
}