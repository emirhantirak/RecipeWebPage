using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class User : System.Web.UI.MasterPage
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Categories", con.Connect());
            SqlDataReader rd = cmd.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();
        }
    }
}