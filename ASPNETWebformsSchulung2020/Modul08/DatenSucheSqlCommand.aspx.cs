using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul08
{
    public partial class DatenSucheSqlCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {
                var cmd = new SqlCommand("SELECT * FROM [Customers] WHERE ([CompanyName] LIKE '%' + @CompanyName + '%')",con);
                cmd.Parameters.AddWithValue("CompanyName", search.Text);
                con.Open();
                //var reader = cmd.ExecuteReader();
                //while (reader.Read())
                //{
                //    Response.Write(reader["CompanyName"]+"<br/>");
                //}
                var da = new SqlDataAdapter(cmd);
                var dt = new DataTable();
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }

        }
    }
}