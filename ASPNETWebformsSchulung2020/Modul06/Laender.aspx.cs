using ASPNETWebformsSchulung2020.Modul04;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebformsSchulung2020.Modul06
{
    public partial class Laender : System.Web.UI.Page
    {
        public List<Land> Liste { get; set; } = new List<Land>();
        protected void Page_Load(object sender, EventArgs e)
        {
          var datei=File.ReadAllLines(  Server.MapPath("~/app_data/laender.txt"));
            foreach (var item in datei)
            {
                var reihe = item.Split(';');
                Liste.Add( new Land() { Name = reihe[0],FullName = reihe[1],Mann = reihe[3],Frau = reihe[4],Code2 = reihe[5], Code3=reihe[6] });
            }
        }
    }
}