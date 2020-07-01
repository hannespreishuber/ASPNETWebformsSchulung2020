namespace ASPNETWebformsSchulung2020.Modul09
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DbTodo : DbContext
    {
        public DbTodo()
            : base("name=DbTodo")
        {
        }

        public virtual DbSet<MyToDos> MyToDos { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
