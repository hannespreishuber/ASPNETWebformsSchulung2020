using ASPNETWebformsSchulung2020.Modul09;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul14
{
    public partial class DAtenCachen : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Customers> kunden;

            if (Cache.Get("Kunden") != null)
            {
                kunden =(List < Customers >) Cache["Kunden"];
                Label1.Text = "aus Cache";
            }
            else
            {
                var db = new dbNorthwind();
                 kunden = db.Customers.ToList();
                Cache.Add("Kunden", kunden, null, DateTime.MaxValue, new TimeSpan(0, 5, 0), CacheItemPriority.Default, null);
                Label1.Text = "aus Datenbank";

            }
        }
    }
}