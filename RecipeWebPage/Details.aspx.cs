using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Details : System.Web.UI.Page
    {
        Entity con = new Entity();
        string dishID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            dishID = Request.QueryString["DishID"];
            
            SqlCommand cmd = new SqlCommand("Select DishName From Tbl_Dishes where DishID = @p1", con.Connect());
            cmd.Parameters.AddWithValue("@p1", dishID);
            SqlDataReader dr = cmd.ExecuteReader();

            while(dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            con.Connect().Close();

            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Comments where DishID = @p2", con.Connect());
            cmd2.Parameters.AddWithValue("@p2", dishID);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void BtnComment_Click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = new SqlCommand("insert into Tbl_Comments " +
                "(CommenterName, CommenterEmail, CommentContent, DishID) values (@c1, @c2, @c3, @c4)", con.Connect());

            cmd3.Parameters.AddWithValue("@c1", TextBox1.Text);
            cmd3.Parameters.AddWithValue("@c2", TextBox2.Text);
            cmd3.Parameters.AddWithValue("@c3", TextBox3.Text);
            cmd3.Parameters.AddWithValue("@c4", dishID);

            cmd3.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}