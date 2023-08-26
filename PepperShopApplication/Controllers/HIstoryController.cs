using Microsoft.AspNetCore.Mvc;
using PepperShopApplication.Helpers;
using PepperShopApplication.Models;
using PepperShopApplicationApplication.Datalayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Controllers
{
    public class HistoryController : Controller
    {
        private readonly ApplicationDBContext _context;

        public HistoryController(ApplicationDBContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            List<Histories> historyItems = new List<Histories>();

            var historyData = HttpContext.Session.Get<List<Histories>>("History");
            if (historyData != null)
            {
                historyItems = historyData;
            }

            return View(historyItems);
        }
    }

}
