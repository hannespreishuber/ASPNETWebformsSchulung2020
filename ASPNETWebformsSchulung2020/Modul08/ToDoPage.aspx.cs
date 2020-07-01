using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul08
{
    class MyToDo
    {
        public int Id { get; set; }
        public string Bezeichnung { get; set; }
        public DateTime Datum { get; set; }
        public bool Erledigt { get; set; }
    }
    public partial class ToDoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = new List<MyToDo>();
            using (var con = new SqlConnection(
              ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {
                var cmd = new SqlCommand("SELECT * FROM [MyTodos] ", con);
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    liste.Add(new MyToDo()
                    {
                        Id = (int)reader["Id"],
                        Bezeichnung = reader["Bezeichnung"].ToString(),
                        Datum = (DateTime)reader["Datum"],
                        Erledigt = (bool)reader["Erledigt"]
                    });
                }
                Repeater1.DataSource = liste;
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}