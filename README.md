# QuanLyNhanSu
### Tham khao MSDN site
ActionResult type ->
reture View(object);  			// render complete a web page
return Content("message");		// render user content of a web page
return Json(new { name = "abc" , value = "123"}, JsonRequestBehavior.AllowGet );	// return Json object
return RedirectToRouteResult();					// chuyen den action

Action Selector
[HttpPost]
public ActionResult Action_Name()
{
	// do some things
	return RedirectToAction("Index"); // chuyen toi action Index voi noi dung moi
}

[HttpGet]
public ActionResult Action_Name()
{
	// do some things
	return View();  // load view cua Action_Name
}

[Route("Controller/Action")]
public ActionResult Action_Name()
{
	return View();
}

[Authorize(Roles="administrator", Users="huy")]
[HttpPost]
public ActionResult Login()
{
	return RedirectToAction("Index");
}

-------
Lam chung do an mon hoc: Quan Ly Nhan Su truc Truyen:
Git Hub link: https://github.com/nnhuy86/QuanLyNhanSu
Gui cho minh git hub account, de minh inviate ban vao du an
Hien tai minh chi lam trang logi nhung chua co ket noi co so du lieu.

Minh lam web nay don gian thoi:
Co tinh nang: them ,xoa, sua, tinh luong nhan vien.
		      them ,xoa, sua, cho phong ban.va may thu khac nua khi xong co so du lieu thi tui moi biet ro.
Ban muon lam gi cng duoc, chuc nang tuyen dung, minh nghi se tao them bang TuyetDung(TenNhanVien, email,sodienthoai,kynang)

Co so du lieu minh van chua xong