using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast.Selectors;

namespace ASPNETWebformsSchulung2020.Modul14
{
    public partial class PageCaching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       public static  string refreshme(HttpContext ctx)
        {
            return DateTime.Now.ToString();
        }
    }
}