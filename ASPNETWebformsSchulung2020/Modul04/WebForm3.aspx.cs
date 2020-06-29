using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul04
{
    public partial class WebForm3 : System.Web.UI.Page
    {
                
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sc = new SmtpClient();
            sc.Send("hannesp@ppedv.de", "billg@microsoft.com", "will dein Geld", "Textinhalt");
        }
    }
}