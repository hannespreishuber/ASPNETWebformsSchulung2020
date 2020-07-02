using ASPNETWebformsSchulung2020.Modul09;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.modul12
{
    public partial class Paging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<ASPNETWebformsSchulung2020.Modul09.Customers> Repeater1_GetData([QueryString] int page)
        {
            var db = new dbNorthwind();
            return db.Customers.OrderBy(x=>x.CustomerID).Skip(page*10).Take(10) ;
        }
    }
}