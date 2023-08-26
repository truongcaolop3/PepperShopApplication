using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PepperShopApplication.Areas.Identity.Data;
using PepperShopApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplicationApplication.Datalayer
{
    public class ApplicationDBContext : IdentityDbContext<ApplicationUser, IdentityRole<int>, int>
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
            builder.ApplyConfiguration(new ApplicationUserEntityConfiguration());

            builder.Entity<DishProduct>().HasKey(table => new
            {
                table.DishId,
                table.ProductId
            });

            // định nghĩa quan hệ 1 - 1 với Employee với AspNetUsers
            builder.Entity<Employee>()
                .HasOne(e => e.Account)
                .WithOne(e => e.Employee)
                .HasForeignKey<Employee>(u => u.Id);

            // định nghĩa quan hệ 1 - 1 với Customer với AspNetUsers
            builder.Entity<Customer>()
                .HasOne(e => e.Account)
                .WithOne(e => e.Customer)
                .HasForeignKey<Customer>(u => u.Id);

            // định nghĩa quann hệ nhiều nhiều cho dish với product
            builder.Entity<DishProduct>()
                .HasOne<Dish>(sc => sc.Dish)
                .WithMany(s => s.Products)
                .HasForeignKey(sc => sc.DishId);

            builder.Entity<DishProduct>()
                .HasOne<Product>(sc => sc.Product)
                .WithMany(s => s.Dishes)
                .HasForeignKey(sc => sc.ProductId);
        }

        internal class ApplicationUserEntityConfiguration : IEntityTypeConfiguration<ApplicationUser>
        {
            public void Configure(EntityTypeBuilder<ApplicationUser> builder)
            {
                // cái này là mình tự buil cái thiếu thôi
                // nó có sẵn email với passwork rồi 
                // ầy thêm mấy trươngf cần thôi như name address đồ thế thiếu address
                // ngoài bảng ni còn thêm 3 4 bảng nữa k biếc
                // lên mạng serarch đi...
                // bảng mô của nó thì có tên asp đầu
                // t tháy video nó xây dựng là thiếu thôi vd:
                // mà address nó k có ở chổ register 
                //  tự thêm thôi
                // video họ demo nhanh thôi cho mình hiểu...aaaaaaaaaaa
                builder.Property(x => x.Name).HasMaxLength(255);
            }
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
        public DbSet<Dish> Dishes { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<DishProduct> DishProduct { get; set; }
        public DbSet<Shipper> Shippers { get; set; }
    }
}
