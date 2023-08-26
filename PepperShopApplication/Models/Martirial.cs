using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models
{
    /// <summary>
    /// Lớp nguyên liệu
    /// </summary>
    public class Martirial
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public int Quantity { set; get; }
        public string Unit { set; get; } = "gram";
        public int Price { set; get; }
    }
}
