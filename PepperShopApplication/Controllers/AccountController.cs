using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PepperShopApplication.Models;
using PepperShopApplication.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PepperShopApplication.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult login()
        {
            return View();
        }

        /// <summary>
        /// Xử lý đăng nhập khi người dùng gửi dữ liệu lên server
        /// </summary>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpPost]
        public IActionResult SignIn([FromBody] LoginViewModel loginViewModel)
        {
            // kiểm tra 
            if (string.IsNullOrEmpty(loginViewModel.Username) || string.IsNullOrEmpty(loginViewModel.Password))
            {
                ModelState.AddModelError("", "Thông tin không đầy đủ");
                return View();
            }

            // kiểm tra quá trình xác thực
            if (loginViewModel.Username == "admin" && loginViewModel.Password == "123")
            {
                return Redirect("/");
            }
            ModelState.AddModelError("", "Tài khoản hoặc mật khẩu không chính xác");
            return View();
        }
    }
}
