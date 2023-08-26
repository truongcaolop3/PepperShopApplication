using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PepperShopApplication.Helpers;
using PepperShopApplication.Models;
using PepperShopApplicationApplication.Datalayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Controllers
{
    public class HIstoryController : Controller
    {
        private readonly ApplicationDBContext _context;

        public HIstoryController(ApplicationDBContext context)
        {
            _context = context;
        }
        public List<Histories> Histories
        {

            get
            {
                var data = HttpContext.Session.Get<List<Histories>>("History");
                if (data == null)
                {
                    data = new List<Histories>();
                }
                return data;
            }
        }
        public IActionResult Index()
        {
            return View(Histories);
        }
        public async Task<IActionResult> Status( string id)
        {
            

            // if (myCart == null) 
            HttpContext.Session.Set("Histories", Histories);
            return RedirectToAction("Index");
        }
    }
}
