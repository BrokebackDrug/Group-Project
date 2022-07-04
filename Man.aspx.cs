using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_Project
{
    public partial class Man : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "1";
            Response.Redirect("Details.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "2";
            Response.Redirect("Details.aspx");
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "3";
            Response.Redirect("Details.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "4";
            Response.Redirect("Details.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "5";
            Response.Redirect("Details.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["ProductID"] = "6";
            Response.Redirect("Details.aspx");
        }
    }
}