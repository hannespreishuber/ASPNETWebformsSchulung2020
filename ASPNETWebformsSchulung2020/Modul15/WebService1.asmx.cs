using ASPNETWebformsSchulung2020.Modul04;
using ASPNETWebformsSchulung2020.Modul09;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ASPNETWebformsSchulung2020.Modul15
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod()]
        public string HelloWorld()
        {
            return "Hello World";
        }

        //[WebMethod]
        //public List<Customers> GetKunden()
        //{
        //    var db =new  dbNorthwind();
        //    db.Configuration.LazyLoadingEnabled = false;
        //    return db.Customers.ToList();
        //}

        [WebMethod]
        public List<MyToDos> GetKunden()
        {
            var db = new DbTodo();
      
            return db.MyToDos.ToList();
        }
    }
}
