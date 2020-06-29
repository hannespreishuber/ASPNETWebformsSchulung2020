using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ASPNETWebformsSchulung2020.Modul04
{
    public class ToDoItem
    {

        public int Id { get; set; }

        [StringLength(50)]
        public string Aufgabe { get; set; }

        public DateTime? Datum { get; set; }

        public bool? Erledigt { get; set; }

        [StringLength(5)]
        public string Bearbeiter { get; set; }
    }
}