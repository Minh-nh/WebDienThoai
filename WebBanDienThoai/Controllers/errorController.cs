using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebBanDienThoai.Controllers
{
    public class errorController : Controller
    {
        // GET: error
        [HandleError]
        public ActionResult Index()
        {
            return View();
        }
    }
}