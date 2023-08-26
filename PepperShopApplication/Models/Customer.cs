using PepperShopApplication.Areas.Identity.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    [Table("customers")]
    public class Customer
    {
        [Key]
        public int Id { get; set; }
        public string Avatar { get; set; }
        public string Address { get; set; }

        // Quan hệ 1 - 1 với AspNetUsers
        public ApplicationUser Account { get; set; }
    }
}
