using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Dishes : System.Web.UI.Page
    {
        Entity con = new Entity();

        string process = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["DishID"];
                process = Request.QueryString["process"];
                
                //Category List
                SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Categories", con.Connect());
                SqlDataReader dataReader2 = cmd2.ExecuteReader();

                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = dataReader2;
                DropDownList1.DataBind();
            }

            //Dish List
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Dishes", con.Connect());
            SqlDataReader dataReader = cmd.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

            if(process == "delete")
            {
                SqlCommand cmd2 = new SqlCommand("Delete From Tbl_Dishes where DishID = @p1", con.Connect());
                cmd2.Parameters.AddWithValue("@p1", id);
                cmd2.ExecuteNonQuery();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnAddDish_Click(object sender, EventArgs e)
        {
            //Add Dish
            SqlCommand command = new SqlCommand("insert into Tbl_Dishes " +
                "(DishName, DishIngredients, DishInstructions, CategoryID) " +
                "values (@d1, @d2, @d3, @d4)", con.Connect());

            command.Parameters.AddWithValue("@d1", TxtDishName.Text);
            command.Parameters.AddWithValue("@d2", TxtIngredients.Text);
            command.Parameters.AddWithValue("@d3", TxtInstructions.Text);
            command.Parameters.AddWithValue("@d4", DropDownList1.SelectedValue);

            command.ExecuteNonQuery();
            con.Connect().Close();

            //Increase the Number of Categories
            SqlCommand command2 = new SqlCommand("update Tbl_Categories set CategoryCount = CategoryCount+1 " +
                "where CategoryID = @p1", con.Connect());
            command2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);

            command2.ExecuteNonQuery();
            con.Connect().Close();
        }
    }
}