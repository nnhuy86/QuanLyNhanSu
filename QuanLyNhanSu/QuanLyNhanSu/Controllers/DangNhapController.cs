using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLyNhanSu.Models;

namespace QuanLyNhanSu.Controllers
{
    public class DangNhapController : Controller
    {
        QUANLYNHANSUEntities dbContext = new QUANLYNHANSUEntities();
        /*
         * Route: Controller: DangNhap
         *        Action: Login
         * Người dùng click trên link Đăng Nhập của Navigation bar, Action Login sẽ được gọi
         * trang Login.cshtml sẽ thể hiện
         * GET: Login
         * HttpGet: web-client gửi GET request tới back-end
         */
        [HttpGet]
        public ActionResult Login()
        {
            return View(); // trả về view của Login.cshtml 
        }

        /*
        * Route: Controller: DangNhap
        *        Action: ThucHienLogin
        * Người dùng click trên nút 'Đăng Nhập' của form Login.cshtml, 
         *       Action ThucHienLogin sẽ được gọi
        * POST: ThucHienLogin
        * HttpPost: web-client gửi POST request tới back-end
         * Tham số: NguoiDung obj
         * POST request sẽ đóng gói dữ liệu thành đối tượng của NhanVien
         * từ form Login rồi pass vào hàm ThucHienLogin(NguoiDung obj)
         * vì vậy thuộc tính của Model NguoiDung phải trùng tên biến 'name' của form Login
        */
        [HttpPost]
        public ActionResult ThucHienLogin(NGUOIDUNG obj)
        {
            var kiemTraTK = dbContext.NGUOIDUNGs.Any(
                NGUOIDUNG_X => NGUOIDUNG_X.MaNV == obj.MaNV && 
                    NGUOIDUNG_X.MatKhau == obj.MatKhau
                );

            if (kiemTraTK)
            {
                return Content("<h1>" + obj.MaNV + " and " + obj.MatKhau + "</h1>");
                // route toi trang quan tri cua Admin
                ///return Redirect();
            }
            else
            {
                ViewBag.err = "Đăng nhập sai tài khoản hoặc mật khẩu";
                return View("Login"); // load lại view Login 
            }

        }
    }
}