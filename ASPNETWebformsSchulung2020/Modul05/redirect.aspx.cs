using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul05
{
    public partial class redirect : System.Web.UI.Page
    {
        public int Count { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Count++;
            Response.Write("xxxxxxxxxxxxxxxx");
        }
    }
}