using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    public class CartItem
    {
        public int CartID { get; set; }
        public bool Type { get; set; } = true; // mặc định là chọn product
        public string NameCart { get; set; }
        public string ImageCart { get; set; }
        public string Unit { get; set; }
        public int PriceCart { get; set; }

        public int Quantity { get; set; }
        public double AllPrice => PriceCart * Quantity;
     }
}
