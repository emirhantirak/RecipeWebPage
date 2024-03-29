using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RecipeWebPage
{
    public class Entity
    {
        public SqlConnection Connect()
        {
            SqlConnection connection = new SqlConnection(@"Data Source = EMIRHANT\SQLEXPRESS; Initial Catalog = DbRecipe; Integrated Security = true");
            connection.Open();
            return connection;
        }
    }
}