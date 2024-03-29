using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace RecipeWebPage
{
    public partial class DishUpdate : System.Web.UI.Page
    {
        Entity con = new Entity();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["DishID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes where DishID=@p1", con.Connect());
                cmd.Parameters.AddWithValue("@p1", id);

                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    TxtDishUpdate.Text = dataReader[1].ToString();
                    TxtIngUpdate.Text = dataReader[2].ToString();
                    TxtInsUpdate.Text = dataReader[3].ToString();
                }

                con.Connect().Close();

                if (Page.IsPostBack == false)
                {
                    //Category List
                    SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Categories", con.Connect());
                    SqlDataReader dataReader2 = cmd2.ExecuteReader();

                    DropDownList1.DataTextField = "CategoryName";
                    DropDownList1.DataValueField = "CategoryID";

                    DropDownList1.DataSource = dataReader2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Dishes set DishName = @p1, " +
                "DishIngredients = @p2, DishInstructions = @p3 where DishID = @p4", con.Connect());

            command.Parameters.AddWithValue("@p1", TxtDishUpdate.Text);
            command.Parameters.AddWithValue("@p2", TxtIngUpdate.Text);
            command.Parameters.AddWithValue("@p3", TxtInsUpdate.Text);
            command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command.ExecuteNonQuery();
            con.Connect().Close();
        }

        protected void BtnChoose_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Dishes set DishStatus = 0", con.Connect());
            command.ExecuteNonQuery();
            con.Connect().Close();


            SqlCommand command2 = new SqlCommand("update Tbl_Dishes set DishStatus = 1 where DishID = @p1", con.Connect());
            command2.Parameters.AddWithValue("@p1", id);
            command2.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}