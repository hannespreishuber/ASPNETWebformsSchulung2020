using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul09
{
    public partial class EditDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public ASPNETWebformsSchulung2020.Modul09.Customers FormView1_GetItem([FriendlyUrlSegments(0)]string CustomerID)
        {
            var db = new dbNorthwind();
            return db.Customers.Find(CustomerID);
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1_UpdateItem(string CustomerID)
        {
            ASPNETWebformsSchulung2020.Modul09.Customers item = null;
            // Element hier laden, z. B. item = MyDataLayer.Find(id);
            var db = new dbNorthwind();
            item= db.Customers.Find(CustomerID);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", CustomerID));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
               db.SaveChanges();
                Response.Redirect("/modul08/datensuche");
            }
        }
    }
}