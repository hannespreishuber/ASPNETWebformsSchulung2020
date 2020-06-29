using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul01
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
            string i = "1";
           // int ii = (int)i; geht hier nicht
            int iii = int.Parse(i);
            int iiii = Convert.ToInt32(i);

            
        }
    }
}