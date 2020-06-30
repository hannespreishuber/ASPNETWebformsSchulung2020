using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul05
{
    public partial class CookieDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var mycookie = new HttpCookie("ppedvCookie");
            mycookie.Value = "Hannes Preishuber";
            mycookie.Expires = DateTime.Now.AddDays(30);
            mycookie.Domain = "localhost";

            Response.Cookies.Add(mycookie);

          
        }
    }
}