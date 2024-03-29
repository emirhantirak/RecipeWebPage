using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class HomePage : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes", con.Connect());
            SqlDataReader dataReader = cmd.ExecuteReader();
            DataList2.DataSource = dataReader;
            DataList2.DataBind();
        }
    }
}