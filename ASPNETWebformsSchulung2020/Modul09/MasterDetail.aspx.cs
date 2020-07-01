using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul09
{
    public partial class MasterDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<ASPNETWebformsSchulung2020.Modul09.Orders> rptOrders_GetData()
        {
            var db = new dbNorthwind();
            return db.Orders;
        }
    }
}