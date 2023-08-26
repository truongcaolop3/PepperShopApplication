using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    [Table("order_details")]
    public class OrderDetail
    {
        [Key]
        public int Id { get; set; }
        public Order Order { get; set; }
        public Dish Dish { get; set; }
        public Product Product { get; set; }
        public int Quantity { get; set; }
        public int Price { get; set; }
    }
}
