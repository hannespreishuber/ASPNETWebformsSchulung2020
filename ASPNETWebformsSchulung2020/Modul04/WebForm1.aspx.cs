using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
            {
                var btn = new Button();
                btn.Text = "Text" + i.ToString();
                btn.CommandArgument = i.ToString();
                btn.Click += new EventHandler(Button1_Click);
                form1.Controls.Add(btn);

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = ((Button)sender).CommandArgument;
        }
    }
}