using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNETWebformsSchulung2020.Modul05
{
    public class DBFake
    {
        public DBFake()
        {
            var x=HttpUtility.HtmlEncode("üöß");
        }
    }
}