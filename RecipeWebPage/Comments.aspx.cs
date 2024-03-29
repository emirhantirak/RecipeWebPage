using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Comments : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            
            //Approved Comment List
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Comments where CommentApproval = 1", con.Connect());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Disapproved Comment List
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Comments where CommentApproval = 0", con.Connect());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}