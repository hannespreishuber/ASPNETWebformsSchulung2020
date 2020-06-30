using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;

namespace ASPNETWebformsSchulung2020
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code, der beim Anwendungsstart ausgeführt wird
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Add("users", 0);
        }
        void Session_Start(object sender, EventArgs e)
        {
            Application["users"] = Convert.ToInt16(Application["users"] )+ 1;
        }
        void Session_End(object sender, EventArgs e)
        {
            Application["users"] = Convert.ToInt16(Application["users"]) - 1;
        }
        void Application_End(object sender, EventArgs e)
        {

        }

    }
}