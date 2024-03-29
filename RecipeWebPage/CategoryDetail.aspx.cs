using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class CategoryDetail : System.Web.UI.Page
    {
        Entity con = new Entity();
        string categoryID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryID = Request.QueryString["CategoryID"];

            SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes where CategoryID = @p1", con.Connect());
            cmd.Parameters.AddWithValue("@p1", categoryID);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}