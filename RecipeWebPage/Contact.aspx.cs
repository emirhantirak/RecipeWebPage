using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public partial class Contact : System.Web.UI.Page
    {
        Entity con = new Entity();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Messages " +
                "(MessageSender, MessageTitle, MessageEmail, MessageContent) " +
                "values (@m1, @m2, @m3, @m4)", con.Connect());

            cmd.Parameters.AddWithValue("@m1", TxtSender.Text);
            cmd.Parameters.AddWithValue("@m2", TxtSubject.Text);
            cmd.Parameters.AddWithValue("@m3", TxtMail.Text);
            cmd.Parameters.AddWithValue("@m4", TxtMessage.Text);

            cmd.ExecuteNonQuery();
            con.Connect().Close();
            Response.Write("Your Message has been received.");
        }
    }
}