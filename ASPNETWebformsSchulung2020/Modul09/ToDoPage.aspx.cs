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

          
        }
    }
}
