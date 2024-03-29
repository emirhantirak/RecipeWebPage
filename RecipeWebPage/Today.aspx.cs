using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Today : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes where DishStatus = 1", con.Connect());
            SqlDataReader rd = cmd.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }
    }
}