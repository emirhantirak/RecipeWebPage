﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class TodayAdmin : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes", con.Connect());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }
    }
}