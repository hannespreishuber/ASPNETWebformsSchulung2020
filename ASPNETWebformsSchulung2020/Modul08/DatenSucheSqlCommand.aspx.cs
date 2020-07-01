using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul08
{
    public partial class DatenSucheSqlCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["NorthwindConnectionString1"].ConnectionString))
            {

            }

        }
    }
}