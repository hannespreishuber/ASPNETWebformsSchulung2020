using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul16
{
    public partial class BilderGallerie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                   }

        public IEnumerable<System.String> Repeater1_GetData()
        {
            var bilder = Directory.GetFiles(Server.MapPath("~/modul16/bilder"));

            for (int i = 0; i < bilder.Length; i++)
            {
                bilder[i] = Path.GetFileName(bilder[i]);
            }
            return bilder;
        }
    }
}