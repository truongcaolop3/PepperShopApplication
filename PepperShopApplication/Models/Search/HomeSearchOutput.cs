using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Models.Search
{
    public class HomeSearchOutput : PaginationOutput
    {
        /// <summary>
        /// 
        /// </summary>
        public List<Product> products { get; set; }
    }
}
