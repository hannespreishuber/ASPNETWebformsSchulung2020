namespace ASPNETWebformsSchulung2020.Modul09
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MyToDos
    {
        public int Id { get; set; }

        [StringLength(50)]
        [Required]
        public string Bezeichnung { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? Datum { get; set; }

        public bool Erledigt { get; set; }
    }
}
