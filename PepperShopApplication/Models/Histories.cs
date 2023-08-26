using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    public class Histories : CartItem
    {
        public int HistoryId { get; set; }
        public DateTime Time { get; set; }
        public int TotalPrice { get; set; }
        public string Status { get; set; }
    }
}
