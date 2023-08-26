using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using PepperShopApplication.Models;
using PepperShopApplication.ViewModels;
using PepperShopApplicationApplication.Datalayer;
using PepperShopApplicationApplication.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplicationApplication.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDBContext _context;
        //private const int PAGE_SIZE = 7;
        //private const string SESSION_CONDITION = "HomeCondition";
        public int formatPage = 1;
        public int formatLimit = 18;
        //public int PageCount
        //{
        //    get
        //    {
        //        if (formatPage == 0)
        //            return 1;

        //        int p = Product / formatLimit;
        //        if (Product % formatLimit > 0)
        //            p += 1;
        //        return p;
        //    }
        //}
        public HomeController(ILogger<HomeController> logger, ApplicationDBContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async Task<IActionResult> Index(string search = null, string page =null, string limit = null)
        {
            //Models.PaginationSearchInput condition
            //   = Session[SESSION_CONDITION] as Models.PaginationSearchInput;
            var products = await _context.Products.ToListAsync();
            var dishes = await _context.Dishes
                    .Include(d => d.Products)
                    .ToListAsync();
            if (!string.IsNullOrEmpty(search))
            {
                var formatSearch = search.Trim().ToLower();
                products = products.Where
                    (product =>
                    {
                        var prod = product.GetType().GetProperty("Name").GetValue(product).ToString().Trim().ToLower();
                        Console.WriteLine($"format search value: {formatSearch}");
                        Console.WriteLine($"product value: {product}");
                        var searchValues = prod.Contains(formatSearch);
                        return searchValues;
                    }
                    ).ToList();
            }
            

           
            if (!string.IsNullOrEmpty(limit))
            {
                formatLimit = int.Parse(limit);
            }

            int totalPages = 0;
            if (!string.IsNullOrEmpty(page))
            {
                formatPage = int.Parse(page);
                int from = (formatPage - 1) * formatLimit; // 1 -> 0 - 5 | 2 -> 5 - 10 | 3 -> 10-15
                int to = formatPage * formatLimit;
                var productDbs = await _context.Products.ToListAsync();
                totalPages = productDbs.Count() / formatLimit;
                products = products.Skip(from).Take(formatLimit).OrderBy(product => product.Id).ToList();
                Console.WriteLine($"From: {from} - To: {to}");
                Console.WriteLine($"===> size product: {products.Count}");
            } else
            {
                var productDbs = await _context.Products.ToListAsync();
                totalPages = productDbs.Count() / formatLimit;
                products = products.Skip(0).Take(formatLimit).OrderBy(product => product.Id).ToList();
            }
            

            
            var data = new HomeViewModel() { 
                Products = products,
                Dishes = dishes,
                TotalPages = totalPages,
                CurrentPage = formatPage,
                Limit = formatLimit
            };            
            return View(data);


        }
        public async Task<IActionResult> Search(string search = null, string page = null, string limit = null)
        {
            var products = await _context.Products.ToListAsync();
            if (!string.IsNullOrEmpty(search))
            {
                var formatSearch = search.Trim().ToLower();
                products = products.Where
                    (product =>
                    {
                        var prod = product.GetType().GetProperty("Name").GetValue(product).ToString().Trim().ToLower();
                        Console.WriteLine($"format search value: {formatSearch}");
                        Console.WriteLine($"product value: {product}");
                        var searchValues = prod.Contains(formatSearch);
                        return searchValues;
                    }
                    ).ToList();
            }



            if (!string.IsNullOrEmpty(limit))
            {
                formatLimit = int.Parse(limit);
            }

            if (!string.IsNullOrEmpty(page))
            {
                formatPage = int.Parse(page);
                int from = (formatPage - 1) * formatLimit; // 1 -> 0 - 5 | 2 -> 5 - 10 | 3 -> 10-15
                int to = formatPage * formatLimit;
                // int totalPages = products.Count() / formatLimit;
                products = products.Skip(from).Take(formatLimit).OrderBy(product => product.Id).ToList();
                Console.WriteLine($"From: {from} - To: {to}");
                Console.WriteLine($"===> size product: {products.Count}");
            }
            return View("");
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="condition"></param>
        ///// <returns></returns>
        //public ActionResult Search(Models.PaginationSearchInput condition) // int Page , int PageSize , string SearchValue
        //{
        //    int rowCount = 0;
        //    var data = CommonDataService.ListOfCategories(condition.Page, condition.PageSize, condition.SearchValue, out rowCount);

        //    Models.CategorySearchOutput result = new Models.CategorySearchOutput()
        //    {
        //        Page = condition.Page,
        //        PageSize = condition.PageSize,
        //        SearchValue = condition.SearchValue,
        //        RowCount = rowCount,
        //        Data = data
        //    };

        //    Session["SESSION_CONDITION"] = condition;
        //    return View(result);
        //}
    }
}
