using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    [Table("dish_product")]
    public class DishProduct
    {
        public int DishId { get; set; }
        public int ProductId { get; set; }
        public Dish Dish { get; set; }
        public Product Product { get; set; }
    }
}
