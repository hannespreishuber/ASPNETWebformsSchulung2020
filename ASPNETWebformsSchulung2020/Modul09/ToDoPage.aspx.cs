using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul09
{
 
    public partial class ToDoPage : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

    

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var rand = new Random();

            var Aufgabe = new MyToDos()
            {
                Bezeichnung = TextBox1.Text,
                Datum = DateTime.Now.AddSeconds(rand.Next(31536000))

            };
            var db = new DbTodo();
            db.MyToDos.Add(Aufgabe);
            db.SaveChanges();
            DataBind();
        }

        protected void TodoListView_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "del":
                    var id = e.CommandArgument;
                    //sql delete 

                    var db = new DbTodo();

                    db.MyToDos.Remove(db.MyToDos.Find(id));
                    db.SaveChanges();
                    break;

                default:
                    break;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            for (int i = 0; i < TodoListView.Items.Count()-1; i++)
            {
                var chk = (CheckBox)TodoListView.Items[i].FindControl("CheckBox1");
                   if (chk.Checked)
                   {
                    var id = TodoListView.DataKeys[i].Value;
                      //SQL Command Update
                 }
            }

          
        }

        // Der Rückgabetyp kann in 'IEnumerable' geändert werden. Damit Paginierung und Sortierung für
        // unterstützt werden, müssen jedoch die folgenden Parameter hinzugefügt werden:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<ASPNETWebformsSchulung2020.Modul09.MyToDos> TodoListView_GetData()
        {
            var db = new DbTodo();
            return db.MyToDos;
        }
    }
}
//erst EF Model erstellen
// aspx Seiten Itemtype, Typed Binings #item., SelectMethod generieren
//INstaz ef, reückgabe todos