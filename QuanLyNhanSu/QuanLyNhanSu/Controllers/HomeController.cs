using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyNhanSu.Controllers
{
    public class HomeController : Controller
    {
        /*
         * Trang Home chạy mặc định khi trình khách gửi request GET-> localhost:port
         * Trang Home chạy mặc định được khai báo trong file App_Start/RouteConfig.cs
         * 
         * GET: Controller/Action
         * Route: Home/Index
         * Trình khách yêu cầu Server gửi thông tin trang Index, nên trình khách sử dụng method GET
         */
        [HttpGet]
        public ActionResult Index()
        {
           /* Home Controller sẽ trả về trang Views/Home/Index.cshtml 
            *
            */
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}