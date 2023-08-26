using PepperShopApplication.Models;
using PepperShopApplication.Models.Search;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.ViewModels
{
    public class HomeViewModel 
    {
        public IEnumerable<Product> Products { get; set; }
        public IEnumerable<Dish> Dishes { get; set; }
        public int TotalPages {  get; set;  }
        public int CurrentPage { get; set; }
        public int Limit { get; set; }
        public int CartID { get; set; }
    }

}
