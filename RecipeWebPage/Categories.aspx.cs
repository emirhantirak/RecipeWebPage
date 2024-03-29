using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Categories : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id = "";
        string process = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["CategoryID"];
                process = Request.QueryString["process"];
            }
            
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Categories", con.Connect());

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if(process == "delete")
            {
                SqlCommand command = new SqlCommand("Delete From Tbl_Categories where CategoryID = @p1", con.Connect());
                command.Parameters.AddWithValue("@p1", id);
                command.ExecuteNonQuery();
                con.Connect().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Categories (CategoryName) " +
                "values (@p1) ", con.Connect());

            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con.Connect().Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}