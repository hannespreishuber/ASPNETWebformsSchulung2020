using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace ASPNETWebformsSchulung2020.Modul15
{
    public class ppedvHub : Hub
    {
        public void Hello()
        {
           
            Clients.All.hello();
        }
        public void SendMsg(string msg,string sender)
        {

            Clients.All.NeueMsg(msg, sender);
        }
    }
}