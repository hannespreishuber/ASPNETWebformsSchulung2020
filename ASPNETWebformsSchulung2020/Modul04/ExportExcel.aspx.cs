using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul04
{
    public partial class ExportExcel : System.Web.UI.Page
    {
        public List<string> Liste { get; set; } = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Liste.Add("Hannes");
            Liste.Add("Bea");
            Liste.Add("Bonnie");
            Liste.Add("Alfred"); 
            Liste.Add("Tobi");
        }
    }
}