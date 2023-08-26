using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PepperShopApplication.Models
{
    /// <summary>
    /// Lớp món ăn
    /// </summary
    [Table("dishes")]
    public class Dish
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; } 
            //= "./img/canhchua.jpg";
        public int Status { get; set; }

        // 1 món ăn có nhiều nguyên liệu
        public List<DishProduct> Products { get; set; } 

    }
}
