using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PepperShopApplication.Areas.Identity.Data;

namespace PepperShopApplication.Areas.Identity.Data
{
    public class ApplicationContext : IdentityDbContext<ApplicationUser, IdentityRole<int>, int>
    {
        public ApplicationContext(DbContextOptions<ApplicationContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
            builder.ApplyConfiguration(new ApplicationUserEntityConfiguration());
        }
        
            
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
}
