using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class pagesController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: pages
        public ActionResult GetPageID(int MenuID, string MenuName)
        {
            var model = db.MenuNavigations.Where(x => x.MenuID == MenuID);
            return View(model.ToList());
        }
    }
}