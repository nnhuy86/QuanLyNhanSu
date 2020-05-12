using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyNhanSu.Controllers
{
    public class LogInController : Controller
    {
        //Route-> GET: LogIn/Index
        public ActionResult Index()
        {
            return View();
        }

        //Route-> POST: LogIn/Verify
        public ActionResult Verify()
        {
            return View();
        }
    }
}