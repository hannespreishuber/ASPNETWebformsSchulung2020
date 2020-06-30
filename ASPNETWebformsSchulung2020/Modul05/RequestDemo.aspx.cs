using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul05
{
    public partial class RequestDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var wert = Request.Form["TextBox1"];
            var wert1 = Request.QueryString["TextBox1"];
            var wert2 = Request.GetFriendlyUrlSegments();
            var wert4 = Request.Browser;
            var wert5 = Request.Params;
          
        }
    }
}