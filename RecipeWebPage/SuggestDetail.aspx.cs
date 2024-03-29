using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class SuggestDetail : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Recipes where RecipeID = @p1", con.Connect());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dataReader = cmd.ExecuteReader();
            
            while(dataReader.Read())
            {
                TextBox1.Text = dataReader[1].ToString();
                TextBox2.Text = dataReader[2].ToString();
                TextBox3.Text = dataReader[3].ToString();
                TextBox4.Text = dataReader[5].ToString();
                TextBox5.Text = dataReader[6].ToString();
            }

            con.Connect().Close();
        }
    }
}