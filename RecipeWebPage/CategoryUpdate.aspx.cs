using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class CategoryUpdate : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CategoryID"];

            if(Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Tbl_Categories where CategoryID=@p1", con.Connect());
                cmd.Parameters.AddWithValue("@p1", id);

                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    TextBox1.Text = dataReader[1].ToString();
                    TextBox1.Text = dataReader[2].ToString();
                }

                con.Connect().Close();
            }

            
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Tbl_Categories set CategoryName = @p1, " +
                "CategoryCount = @p2 where CategoryID = @p3", con.Connect());

            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}