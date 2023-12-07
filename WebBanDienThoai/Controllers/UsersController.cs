using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class UsersController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: Users
        public ActionResult Index(int? page, string q)
        {
            var count_user = (from cus in db.Users select cus.UserID).Count();

            ViewBag.count_user = count_user;

            var model = from p in db.Users orderby p.CreatedAt descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);

            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.Username.Contains(q) || x.Email.Contains(q) || x.Fullname.Contains(q)).OrderByDescending(x => x.CreatedAt);
            }

            ViewBag.keyword_search = q;

            return View(model.ToPagedList(pageNumber, pagesize));
        }




        // GET: Admin/Users/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Users/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Create(User user, HttpPostedFileBase image_avatar, bool status_mi)
        {

            if (ModelState.IsValid)
            {

                user.Password = user.Password;
                user.CreatedAt = DateTime.Now;

                bool tus;
                if (status_mi == true)
                {
                    tus = true;
                }
                else
                {
                    tus = false;
                }

                var checkemail = db.Users.Count(x => x.Email == user.Email);
                if (checkemail > 0)
                {
                    ViewBag.erroremail = "Email Đăng Kí Đã Tồn Tại";
                }
                else
                {
                    if (image_avatar != null)
                    {
                        var filename = Path.GetFileName(image_avatar.FileName);
                        var path = Path.Combine(Server.MapPath("~/Upload/Images"), filename);


                        image_avatar.SaveAs(path);
                        user.Image = "/Upload/Images/" + image_avatar.FileName;
                    }
                    else
                    {
                        user.Image = "/Upload/Default/man-avatar.jpg";
                    }
                    user.Status = tus;
                    db.Users.Add(user);
                    db.SaveChanges();
                    return RedirectToAction("Index");

                }
            }

            return View(user);
        }






        // GET: Admin/Users/Delete/5
        public ActionResult Delete(int? id)
        {

            User user = db.Users.Find(id);

            if (user.Image != null)
            {
                var filename = Path.GetFileName(user.Image);
                System.IO.File.Delete(Request.PhysicalApplicationPath + "/Upload/Images/" + filename);
            }

            db.Users.Remove(user);
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