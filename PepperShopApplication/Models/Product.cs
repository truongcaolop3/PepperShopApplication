using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    [Table("products")]
    public class Product
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public int Quantity { set; get; }
        public string Unit { set; get; } = "gram";
        public int Price { set; get; }
        public string Image { set; get; }
        public Category Category { get; set; }

        [JsonIgnore]
        public List<DishProduct> Dishes { get; set; }
    }
}
