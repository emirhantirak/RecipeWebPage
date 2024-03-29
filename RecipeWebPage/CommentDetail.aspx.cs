using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class CommentDetail : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CommentID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select CommenterName, CommenterEmail, CommentContent, DishName " +
            "From Tbl_Comments inner join Tbl_Dishes on Tbl_Comments.DishID = Tbl_Dishes.DishID " +
            "where CommentID=@p1", con.Connect());
                cmd.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    TxtName.Text = dr[1].ToString();
                    TxtMail.Text = dr[2].ToString();
                    TxtContent.Text = dr[3].ToString();
                    TxtDish.Text = dr[4].ToString();
                }

                con.Connect().Close();
            }


        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Tbl_Comments set CommentContent = @p1, " +
                "CommentApproval = @p2 where CommentID = @p3", con.Connect());

            cmd.Parameters.AddWithValue("@p1", TxtContent.Text);
            cmd.Parameters.AddWithValue("@p2", "true");
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}