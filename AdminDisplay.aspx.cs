using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
namespace Group_Project
{
     public partial class AdminDisplay : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TANG;Initial Catalog=ShoeStore;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                Bind();
            }


        }

        public void Bind()
        {

                con.Open();
                string SelectQuery = "select * from product";
                //SqlCommand cmd = new SqlCommand(selectQuery, con);

                SqlDataAdapter myda = new SqlDataAdapter(SelectQuery, con);
                DataSet myds = new DataSet();
                myda.Fill(myds, "product");
                //GridView1.DataSource = myds;
                GridView1.DataKeyNames = new string[] { "PRODUCT_ID" };//primary kay
                GridView1.DataBind();
                con.Close();
                //GridView1.EditIndex = -1;
            


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
           
        }


        //Update
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            try
            {
                //SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
                con.Open();


                string updateQuery = "update product set PRODUCT_NAME='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim()
                    + "',PRODUCT_DESCRIPTION='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() 
                    + "',PRODUCT_PRICE='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() 
                    + "',PRODUCT_STOCK='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() 
                    + "',PRODUCT_TYPE='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() 
                    + "',PRODUCT_IMAGE='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim()
                    + "' where PRODUCT_ID='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
                SqlCommand cmd = new SqlCommand(updateQuery, con);

                cmd.ExecuteNonQuery();

                //Response.Write("Update successful!");
                con.Close();
                GridView1.EditIndex = -1;
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }
        //Cancel
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            //Response.Write("You have cancelled editting!");
        }
       
        //delete
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IV4806AO\MSSQLSERVER03;Initial Catalog=shoestore;Integrated Security=True");
                con.Open();
                string deleteQuery = "delete from product where PRODUCT_ID = '" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";

                SqlCommand cmd = new SqlCommand(deleteQuery, con);

                cmd.ExecuteNonQuery();

                //Response.Write("Successfully delete the row");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }
    }
}