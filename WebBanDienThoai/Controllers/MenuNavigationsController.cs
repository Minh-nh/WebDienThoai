using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class MenuNavigationsController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: MenuNavigations
        public ActionResult Index(int? page, string q)
        {
            var count_menu = (from menu in db.MenuNavigations select menu.MenuID).Count();

            ViewBag.count_menu = count_menu;


            var parent_menu = db.MenuNavigations.Where(x => x.MenuParents == x.MenuID).ToList();

            ViewBag.parent_menu = parent_menu;

            var model = from p in db.MenuNavigations orderby p.Sequence descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);


            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.MenuName.Contains(q) || x.Sequence.ToString().Contains(q)).OrderByDescending(x => x.Sequence);
            }

            ViewBag.keyword_search = q;

            return View(model.ToPagedList(pageNumber, pagesize));
        }




        public JsonResult GetDataCategorys()
        {
            var category = db.Categories.Select(x => new
            {
                IdCate = x.CategoryID,
                NameCate = x.CategoryName
            }).ToList();
            return Json(category, JsonRequestBehavior.AllowGet);
        }

    



        public ActionResult Create()
        {
            var listParent = db.MenuNavigations.AsEnumerable();


            ViewBag.item = listParent.ToList();
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(MenuNavigation menuNavigation, HttpPostedFileBase image_icon, bool status_mi)
        {
            if (ModelState.IsValid)
            {
                bool tus;
                if (status_mi == true)
                {
                    tus = true;
                }
                else
                {
                    tus = false;
                }



                if (image_icon != null)
                {
                    var filename = Path.GetFileName(image_icon.FileName);
                    var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);


                    image_icon.SaveAs(path);
                    menuNavigation.IconMenu = "/Upload/Images/" + image_icon.FileName;
                }

                menuNavigation.Status = tus;
                menuNavigation.CreatedAt = DateTime.Now;
                db.MenuNavigations.Add(menuNavigation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }


            var listParent = db.MenuNavigations.AsEnumerable();
            ViewBag.item = listParent.ToList();


            return View(menuNavigation);
        }

        // GET: Admin/MenuNavigations/Edit/5
        public ActionResult Edit(int? id)
        {
            var listParent = db.MenuNavigations.AsEnumerable();

            ViewBag.item = listParent.ToList();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MenuNavigation menuNavigation = db.MenuNavigations.Find(id);
            if (menuNavigation == null)
            {
                return HttpNotFound();
            }
            return View(menuNavigation);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(MenuNavigation menuNavigation, HttpPostedFileBase image_icon)
        {
            if (ModelState.IsValid)
            {



                if (image_icon != null)
                {
                    var filename = Path.GetFileName(image_icon.FileName);
                    var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);


                    image_icon.SaveAs(path);
                    menuNavigation.IconMenu = "/Upload/Images/" + image_icon.FileName;
                }


                db.Entry(menuNavigation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(menuNavigation);
        }

        // GET: Admin/MenuNavigations/Delete/5
        public ActionResult Delete(int? id)
        {
            MenuNavigation nav = db.MenuNavigations.Find(id);

            db.MenuNavigations.Remove(nav);
            db.SaveChanges();
            return RedirectToAction("Index");
        }



        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}