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
    public class MyToDo
    {
        public int Id { get; set; }
        public string Bezeichnung { get; set; }
        public DateTime Datum { get; set; }
        public bool Erledigt { get; set; }
    }
    public partial class ToDoPage : System.Web.UI.Page
    {
        public List<MyToDo> liste { get; set; } = new List<MyToDo>();
        protected void Page_Load(object sender, EventArgs e)
        {
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
                if (IsPostBack == false)
                {

                    Repeater1.DataSource = liste;
                    Repeater1.DataBind();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var rand = new Random();
            using (var con = new SqlConnection(
               ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {
                var d = DateTime.Now.AddSeconds(rand.Next(31536000));
                var cmd = new SqlCommand("INSERT INTO  [MyTodos] (Bezeichnung,Datum) Values (@bezeichnung,@datum); SELECT CAST(scope_identity() AS int) ", con);
                cmd.Parameters.AddWithValue("bezeichnung", TextBox1.Text);
                cmd.Parameters.AddWithValue("datum", d);

                con.Open();
                var newid = (int)cmd.ExecuteScalar();
                liste.Add(new MyToDo()
                {
                    Id = newid,
                    Bezeichnung = TextBox1.Text,
                    Datum = d,
                    Erledigt = false
                }); ;
                Repeater1.DataSource = liste;
                Repeater1.DataBind();

            };

        }

        protected void Repeater1_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "del":
                    var id = e.CommandArgument;
                    //sql delete 
                    break;

                default:
                    break;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            for (int i = 0; i < Repeater1.Items.Count()-1; i++)
            {
                var chk = (CheckBox)Repeater1.Items[i].FindControl("CheckBox1");
                   if (chk.Checked)
                   {
                    var id = Repeater1.DataKeys[i].Value;
                      //SQL Command Update
                 }
            }

            //foreach (RepeaterItem item in Repeater1.Items)
            //{

            //    var chk = (CheckBox)item.FindControl("CheckBox1");
            //    if (chk.Checked)
            //    {
            //        //SQL Command Update
            //    }
            //}
        }
    }
}
