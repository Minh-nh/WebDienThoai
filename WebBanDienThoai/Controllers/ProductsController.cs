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
    public class ProductsController : Controller
    {

        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: Admin/Products
        public ActionResult Index(int? page, string q)
        {
            var count_product = (from pro in db.Products select pro.ProductID).Count();

            ViewBag.count_product = count_product;

            var model = from p in db.Products.Include(p => p.Category) orderby p.CreatedAt descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);

            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.ProductName.Contains(q) || x.Price.ToString().Contains(q) || x.Category.CategoryName.Contains(q)).OrderByDescending(x => x.CreatedAt);
            }

            ViewBag.keyword_search = q;

            return View(model.ToPagedList(pageNumber, pagesize));

        }




        public ActionResult Create()
        {
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Product product, bool status_mi)
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

                product.Author = Session["Username"].ToString();
                product.CreatedAt = DateTime.Now;
                product.Status = tus;


                var check_name = db.Products.Count(x => x.ProductName == product.ProductName);
                var check_alias = db.Products.Count(x => x.Alias == product.Alias);
                if (check_name > 0)
                {
                    ViewBag.check_name = "Tên Sản Phẩm  Đã Tồn Tại";
                }
                else if (check_alias > 0)
                {
                    ViewBag.check_alias = "Đường Dẫn URL Đã Tồn Tại";
                }
                else
                {




                    List<ImageProduct> fileDetails = new List<ImageProduct>();
                    for (int i = 0; i < Request.Files.Count; i++)
                    {
                        var image_product = Request.Files[i];

                        if (image_product != null && image_product.ContentLength > 0)
                        {
                            var FileImages = Path.GetFileName(image_product.FileName);
                            ImageProduct fileDetail = new ImageProduct()
                            {
                                FileImages = FileImages.Replace(" ", "_")
                            };
                            fileDetails.Add(fileDetail);

                            var path = Path.Combine(Server.MapPath("~/Upload/Images/"), FileImages.Replace(" ", "_"));
                            image_product.SaveAs(path);
                        }
                    }


                    product.ImageProducts = fileDetails;
                    db.Products.Add(product);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

            }

            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }



        // GET: Admin/Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }

        // POST: Admin/Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Product product)
        {
            if (ModelState.IsValid)
            {

                for (int i = 0; i < Request.Files.Count; i++)
                {
                    var file = Request.Files[i];

                    if (file != null && file.ContentLength > 0)
                    {
                        var fileName = Path.GetFileName(file.FileName.Replace(" ", "_"));
                        ImageProduct fileDetail = new ImageProduct()
                        {
                            FileImages = fileName.Replace(" ", "_"),
                            ImageProductID = Guid.NewGuid(),
                            ProductID = product.ProductID
                        };
                        var path = Path.Combine(Server.MapPath("~/Upload/Images/"), fileName.Replace(" ", "_"));
                        file.SaveAs(path);

                        db.Entry(fileDetail).State = EntityState.Added;
                    }
                }

                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }



        [HttpPost]
        public JsonResult DeleteFile(string id)
        {
            if (String.IsNullOrEmpty(id))
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;
                return Json(new { Result = "Error" });
            }
            try
            {
                Guid guid = new Guid(id);
                ImageProduct fileDetail = db.ImageProducts.Find(guid);
                if (fileDetail == null)
                {
                    Response.StatusCode = (int)HttpStatusCode.NotFound;
                    return Json(new { Result = "Error" });
                }

                //Remove from database
                db.ImageProducts.Remove(fileDetail);
                db.SaveChanges();

                //Delete file from the file system
                var path = Path.Combine(Server.MapPath("~/Upload/Images/"), fileDetail.ImageProductID + fileDetail.FileImages);
                if (System.IO.File.Exists(path))
                {
                    System.IO.File.Delete(path);
                }
                return Json(new { Result = "OK" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }



        // GET: Admin/Products/Delete/5
        public ActionResult Delete(int? id)
        {

            Product product = db.Products.Find(id);

            foreach (var item in product.ImageProducts)
            {
                String path = Path.Combine(Server.MapPath("~/Upload/Images"), item.ImageProductID + item.FileImages);
                if (System.IO.File.Exists(path))
                {
                    System.IO.File.Delete(path);
                }
            }




            db.Products.Remove(product);
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