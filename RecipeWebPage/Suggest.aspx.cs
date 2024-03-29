using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Suggest : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSUggest_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Recipes " +
                "(RecipeName, RecipeIngredients, RecipeInstructions, RecipeImage, RecipeOwner, RecipeOwnerEmail) " +
                "values (@r1, @r2, @r3, @r4, @r5, @r6)", con.Connect());

            cmd.Parameters.AddWithValue("@r1", TxtRecipeName.Text);
            cmd.Parameters.AddWithValue("@r2", TxtIngredients.Text);
            cmd.Parameters.AddWithValue("@r3", TxtInstructions.Text);
            cmd.Parameters.AddWithValue("@r4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@r5", TxtOwner.Text);
            cmd.Parameters.AddWithValue("@r6", TxtMail.Text);

            cmd.ExecuteNonQuery();
            con.Connect().Close();
            Response.Write("Your recipe has been received.");
        }
    }
}