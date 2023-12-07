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
    public class SlidesController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: Admin/Slides
        public ActionResult Index(int? page, string q)
        {
            var count_slide = (from slider in db.Slides select slider.SliderID).Count();

            ViewBag.count_slide = count_slide;




            var model = from p in db.Slides orderby p.SortID descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);


            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.SliderName.Contains(q) || x.Description.Contains(q)).OrderByDescending(x => x.SortID);
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
        public ActionResult Create(Slide slide, HttpPostedFileBase image_avatar)
        {
            if (ModelState.IsValid)
            {


                if (image_avatar != null)
                {
                    var filename = Path.GetFileName(image_avatar.FileName);
                    var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);


                    image_avatar.SaveAs(path);
                    slide.Images = "/Upload/Images/" + image_avatar.FileName;
                }
                else
                {
                    slide.Images = "";
                }


                db.Slides.Add(slide);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(slide);
        }

        // GET: Admin/Slides/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Slide slide = db.Slides.Find(id);
            if (slide == null)
            {
                return HttpNotFound();
            }
            return View(slide);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Slide slide, HttpPostedFileBase image_avatars)
        {
            if (ModelState.IsValid)
            {

                if (image_avatars != null)
                {
                    var filename = Path.GetFileName(image_avatars.FileName);
                    var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);
                    image_avatars.SaveAs(path);
                    slide.Images = "/Upload/Images/" + image_avatars.FileName;
                }


                db.Entry(slide).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(slide);
        }

        // GET: Admin/Slides/Delete/5
        public ActionResult Delete(int? id)
        {

            Slide slide = db.Slides.Find(id);

            if (slide.Images != "")
            {
                var filename = Path.GetFileName(slide.Images);
                System.IO.File.Delete(Request.PhysicalApplicationPath + "/Upload/Images/" + filename);
            }

            db.Slides.Remove(slide);
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