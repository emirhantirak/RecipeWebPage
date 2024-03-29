using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class MessageDetailaspx : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Messages where MessageID = @p1", con.Connect());
            cmd.Parameters.AddWithValue("@p1",id);

            SqlDataReader dr = cmd.ExecuteReader();
            
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }

            con.Connect().Close();
        }
    }
}