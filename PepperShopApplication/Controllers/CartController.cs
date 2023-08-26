using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PepperShopApplication.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PepperShopApplication.Models;
using Microsoft.EntityFrameworkCore;
using PepperShopApplicationApplication.Models;
using PepperShopApplicationApplication.Datalayer;
using PepperShopApplication.Helpers;
using Microsoft.AspNetCore.Http;

namespace PepperShopApplication.Controllers
{
    [Authorize]
    public class CartController : Controller
    {
        private readonly ApplicationDBContext _context;

        public CartController(ApplicationDBContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View(Carts);
        }
        public List<CartItem> Carts
        {

            get
            {
                var data = HttpContext.Session.Get<List<CartItem>>("GioHang");
                if (data == null)
                {
                    data = new List<CartItem>();
                }
                return data;
            }
        }
        

        public async Task<ActionResult> AddToCart(string id, int soluong = 1)
        {
            var myCart = Carts;
            //p - 5
            Console.WriteLine($"===> id: {id}");
            var type = id.Substring(0, 1);
            var firstStr = id.Substring(0, 2);
            Console.WriteLine($"===> type {type}");
            var idStr = id.Replace(firstStr, "");
            Console.WriteLine($"===> idStr {idStr}");
            var formatId = int.Parse(idStr);
            var item = Carts.SingleOrDefault(p => p.CartID == formatId);

            if (item == null)
            {
                // trường hợp chọn món ăn
                if (type == "d")
                {
                    var dishes = await _context.Dishes
                            .Include(d => d.Products)
                            .ToListAsync();
                    var hanghoa = await _context.Dishes
                        .Include(d => d.Products)
                        .SingleOrDefaultAsync(d => d.Id == formatId);
                    var dishProducts = await _context.DishProduct
                        .Include(dp => dp.Product)
                        .ToArrayAsync();
                    var totalPrice = dishes.Where(d => d.Id == formatId).FirstOrDefault().Products.Sum(p => p.Product.Price);
                    item = new CartItem()
                    {
                        CartID = formatId,
                        NameCart = hanghoa.Name,
                        PriceCart = totalPrice,
                        Quantity = soluong,
                        ImageCart = hanghoa.Image,
                        
                    };
                }

                if (type == "p")
                {
                    var hanghoa = await _context.Products.SingleOrDefaultAsync(p => p.Id == formatId);
                    item = new CartItem()
                    {
                        CartID = formatId,
                        NameCart = hanghoa.Name,
                        //PriceCart = dish.price.value,
                        PriceCart = hanghoa.Price,
                        //PriceCart = dish.Products.Sum(d => d.Product.Price),
                        Quantity = soluong,
                        ImageCart = hanghoa.Image,
                        Unit = hanghoa.Unit


                    };
                }
                
                myCart.Add(item);

            }

            else
            {
                
                item.Quantity += soluong;
                // thay đổi giá trị trong cart
                var oldItem = myCart.FirstOrDefault(cart => cart.CartID == item.CartID);
                oldItem.Quantity = item.Quantity;
                //item.Quantity += soluong;
            }


            HttpContext.Session.Set("GioHang", myCart);
            return RedirectToAction("Index");

            
        }
        public IActionResult Delete(int id)
        {
            Console.WriteLine($"===> Delete id {id}");
            var myCarts = Carts;
            myCarts = myCarts.Where(cart => cart.CartID != id).ToList();
            HttpContext.Session.Set("GioHang", myCarts);

            return RedirectToAction("Index");
        }
       
        public IActionResult UpdateQuantity(int id , int soluong)
        {
            Console.WriteLine($"==> update id {id} and quantity {soluong}");
            var myCart = Carts;

            var itemInCart = myCart.Where(c => c.CartID == id).FirstOrDefault();
            itemInCart.Quantity = soluong;

            HttpContext.Session.Set("GioHang", myCart);

            return RedirectToAction("Index");
        }
        
        public IActionResult BuyAll()
        {
            var myCarts = Carts.ToList();

            List<Histories> historyItems = new List<Histories>();
            var historyData = HttpContext.Session.Get<List<Histories>>("History");
            if (historyData != null)
            {
                historyItems = historyData;
            }

            foreach (var boughtItem in myCarts)
            {
                historyItems.Add(new Histories
                {
                    HistoryId = boughtItem.CartID,
                    ImageHistory = boughtItem.ImageCart,
                    NameHistory = boughtItem.NameCart,
                    PriceHistory = boughtItem.PriceCart,
                    Quantity = boughtItem.Quantity,
                    TotalPrice = (int)boughtItem.AllPrice,
                    Unit = boughtItem.Unit
                    
                    
                });
            }

            HttpContext.Session.Set("History", historyItems);

            myCarts.Clear();
            HttpContext.Session.Set("GioHang", myCarts);

            return RedirectToAction("Index", "History");
        }


    }
}
