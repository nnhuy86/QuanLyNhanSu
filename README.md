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