using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    public class Histories
    {
        public int HistoryId { get; set; }
        public DateTime Time { get; set; }
        public int TotalPrice { get; set; }
        public string Status { get; set; }
        public bool Type { get; set; } = true; // mặc định là chọn product
        public string NameHistory { get; set; }
        public string ImageHistory { get; set; }
        public string Unit { get; set; }
        public int PriceHistory { get; set; }
        public int Quantity { get; set; }
        public int AllPrice => PriceHistory * Quantity;
        //public totalPrice += All
    }
}
