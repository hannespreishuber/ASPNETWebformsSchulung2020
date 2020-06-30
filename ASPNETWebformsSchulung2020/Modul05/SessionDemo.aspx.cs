using ASPNETWebformsSchulung2020.Modul04;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul05
{
    public partial class SessionDemo : System.Web.UI.Page
    {
        public List<String> ToDoItems { get; set; } = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (  Session["todos"]==null)
            {
                Session.Add("todos",ToDoItems);
            }

            ToDoItems = (List<String>)Session["todos"];
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


          
            ToDoItems.Add(task.Text);
            task.Text = "";
            Session["todos"] = ToDoItems;

        }
    }
}