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
    public class CategoriesController : Controller
    {
        // GET: Categories
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: Admin/Categories
        public ActionResult Index(int? page, string q)
        {
            var count_cate = (from cate in db.Categories select cate.CategoryID).Count();

            ViewBag.count_cate = count_cate;




            var model = from p in db.Categories orderby p.CreatedAt descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);


            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.CategoryName.Contains(q)).OrderByDescending(x => x.CreatedAt);
            }

            ViewBag.keyword_search = q;

            return View(model.ToPagedList(pageNumber, pagesize));
        }




        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Category category, HttpPostedFileBase image_avatar, bool status_mi)
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

                category.Author = Session["Username"].ToString();
                category.CreatedAt = DateTime.Now;
                category.Status = tus;




                var check_cate = db.Categories.Count(x => x.CategoryName == category.CategoryName);
                var check_alias = db.Categories.Count(x => x.Alias == category.Alias);
                if (check_cate > 0)
                {
                    ViewBag.check_cate = "Tên Nhóm Sản Phẩm  Đã Tồn Tại";
                }
                else if (check_alias > 0)
                {
                    ViewBag.check_alias = "Đường Dẫn URL Đã Tồn Tại";
                }
                else
                {
                    if (image_avatar != null)
                    {
                        var filename = Path.GetFileName(image_avatar.FileName);
                        var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);


                        image_avatar.SaveAs(path);
                        category.Images = "/Upload/Images/" + image_avatar.FileName;
                    }
                    else
                    {
                        category.Images = "";
                    }

                    db.Categories.Add(category);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }



            }
            return View(category);
        }

        // GET: Admin/Categories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Category category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Category category, HttpPostedFileBase image_avatars)
        {
            if (ModelState.IsValid)
            {

                if (image_avatars != null)
                {
                    var filename = Path.GetFileName(image_avatars.FileName);
                    var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);
                    image_avatars.SaveAs(path);
                    category.Images = "/Upload/Images/" + image_avatars.FileName;
                }




                db.Entry(category).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");


            }
            return View(category);
        }

        // GET: Admin/Categories/Delete/5

        public ActionResult Delete(int? id)
        {

            Category category = db.Categories.Find(id);

            if (category.Images != "")
            {
                var filename = Path.GetFileName(category.Images);
                System.IO.File.Delete(Request.PhysicalApplicationPath + "/Upload/Images/" + filename);
            }

            db.Categories.Remove(category);
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