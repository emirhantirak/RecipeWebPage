using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class AboutUsAdmin : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Tbl_About", con.Connect());
                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    TextBox1.Text = dataReader[0].ToString();
                }

                con.Connect().Close();
            }

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
            SqlCommand cmd = new SqlCommand("update * From Tbl_About set TextAbout = @p1", con.Connect());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}