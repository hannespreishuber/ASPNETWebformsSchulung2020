namespace ASPNETWebformsSchulung2020.Modul09
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class dbNorthwind : DbContext
    {
        public dbNorthwind()
            : base("name=dbNorthwind")
        {
        }

        public virtual DbSet<Customers> Customers { get; set; }
        public virtual DbSet<Order_Details> Order_Details { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Customers>()
                .Property(e => e.CustomerID)
                .IsFixedLength();

            modelBuilder.Entity<Order_Details>()
                .Property(e => e.UnitPrice)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Orders>()
                .Property(e => e.CustomerID)
                .IsFixedLength();

            modelBuilder.Entity<Orders>()
                .Property(e => e.Freight)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Orders>()
                .HasMany(e => e.Order_Details)
                .WithRequired(e => e.Orders)
                .WillCascadeOnDelete(false);
        }
    }
}
