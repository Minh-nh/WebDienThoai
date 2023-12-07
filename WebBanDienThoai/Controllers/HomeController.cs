using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        public ActionResult Index()
        {
            //Nhóm sản phẩm Index 1

            var getTitleBlock1 = db.Homes.Take(1).ToList();

            ViewBag.getTitleBlock1 = getTitleBlock1;

            var collection_home_1 = from g in db.Homes
                                    join p in db.Products on g.Collection_home1 equals p.CategoryID
                                    where p.Status == true
                                    select new ProductModel
                                    {
                                        Collection1_Status = g.Collection1_Status,
                                        title_category1 = g.title_category1
                                    ,
                                        Collection_home1 = g.Collection_home1,
                                        button_more1 = g.button_more1,
                                        ProductID = p.ProductID,
                                        ProductName = p.ProductName,
                                        Price = p.Price
                                    ,
                                        PriceSale = p.PriceSale,
                                        Alias = p.Alias,
                                        Images = p.Images,
                                        Quanlity = p.Quanlity,
                                        CategoryID = p.CategoryID,
                                        Status = p.Status
                                    };

            ViewBag.collection_home_1 = collection_home_1.ToList();



            //nhóm sản phẩm Index 2
            //nhóm bên trái

            var collection_home_2_left = (from g in db.Homes
                                          join p in db.Products on g.Collection_left2 equals p.CategoryID
                                          where p.Status == true
                                          select new ProductModel
                                          {
                                              ProductID = p.ProductID,
                                              ProductName = p.ProductName,
                                              Price = p.Price,
                                              PriceSale = p.PriceSale,
                                              Alias = p.Alias,
                                              Images = p.Images,
                                              Quanlity = p.Quanlity,
                                              CategoryID = p.CategoryID,
                                              Status = p.Status
                                          }).Take(5);

            ViewBag.collection_home_2_left = collection_home_2_left.ToList();

            //nhóm bên phải

            var collection_home_2 = from g in db.Homes
                                    join p in db.Products on g.Collection_home2 equals p.CategoryID
                                    where p.Status == true
                                    select new ProductModel
                                    {
                                        ProductID = p.ProductID,
                                        ProductName = p.ProductName,
                                        Price = p.Price,
                                        PriceSale = p.PriceSale,
                                        Alias = p.Alias,
                                        Images = p.Images,
                                        Quanlity = p.Quanlity,
                                        CategoryID = p.CategoryID,
                                        Status = p.Status
                                    };

            ViewBag.collection_home_2 = collection_home_2.ToList();

            //nhóm sản phẩm index 3

            //sản phẩm bên trái

            var collection_home_3 = (from g in db.Homes
                                     join p in db.Products on g.Collection_home3 equals p.CategoryID
                                     where p.Status == true
                                     select new ProductModel
                                     {
                                         ProductID = p.ProductID,
                                         ProductName = p.ProductName,
                                         Price = p.Price,
                                         PriceSale = p.PriceSale,
                                         Alias = p.Alias,
                                         Images = p.Images,
                                         Quanlity = p.Quanlity,
                                         CategoryID = p.CategoryID,
                                         Status = p.Status
                                     }).Take(5);

            ViewBag.collection_home_3 = collection_home_3.ToList();

            //sản phẩm bên phải

            var collection_home_3_right = from g in db.Homes
                                          join p in db.Products on g.Collection_right3 equals p.CategoryID
                                          where p.Status == true
                                          select new ProductModel
                                          {
                                              ProductID = p.ProductID,
                                              ProductName = p.ProductName,
                                              Price = p.Price,
                                              PriceSale = p.PriceSale,
                                              Alias = p.Alias,
                                              Images = p.Images,
                                              Quanlity = p.Quanlity,
                                              CategoryID = p.CategoryID,
                                              Status = p.Status
                                          };

            ViewBag.collection_home_3_right = collection_home_3_right.ToList();





            //nhóm sản phẩm Index 4
            //nhóm bên trái

            var collection_home_4_left = (from g in db.Homes
                                          join p in db.Products on g.Collection_left4 equals p.CategoryID
                                          where p.Status == true
                                          select new ProductModel
                                          {
                                              ProductID = p.ProductID,
                                              ProductName = p.ProductName,
                                              Price = p.Price,
                                              PriceSale = p.PriceSale,
                                              Alias = p.Alias,
                                              Images = p.Images,
                                              Quanlity = p.Quanlity,
                                              CategoryID = p.CategoryID,
                                              Status = p.Status
                                          }).Take(5);

            ViewBag.collection_home_4_left = collection_home_4_left.ToList();

            //nhóm bên phải

            var collection_home_4 = from g in db.Homes
                                    join p in db.Products on g.Collection_home4 equals p.CategoryID
                                    where p.Status == true
                                    select new ProductModel
                                    {
                                        ProductID = p.ProductID,
                                        ProductName = p.ProductName,
                                        Price = p.Price,
                                        PriceSale = p.PriceSale,
                                        Alias = p.Alias,
                                        Images = p.Images,
                                        Quanlity = p.Quanlity,
                                        CategoryID = p.CategoryID,
                                        Status = p.Status
                                    };

            ViewBag.collection_home_4 = collection_home_4.ToList();



            //blog home

         



            var config_home = db.Configures.ToList();

            ViewBag.config_home = config_home;


            return View();
        }


        public PartialViewResult MainMenu()
        {
            var model = db.MenuNavigations.Where(x => x.MenuParents == 0 && x.Status == true).OrderBy(x => x.Sequence).ToList();
            var get_category = from m in db.MenuNavigations
                               join c in db.Categories
                               on m.GroupLink equals c.CategoryID
                               where m.Status == true
                               select new Navigation
                               {
                                   MenuID = m.MenuID,
                                   MenuName = m.MenuName,
                                   Sequence = m.Sequence,
                                   IconMenu = m.IconMenu,
                                   MenuParents = m.MenuParents,
                                   PageStyle = m.PageStyle,
                                   CategoryID = c.CategoryID,
                                   CategoryName = c.CategoryName,
                                   CreatedAt = m.CreatedAt,
                                   FormatPage = m.FormatPage,
                                   GroupLink = m.GroupLink,
                                  
                                   PageContent = m.PageContent,
                                   PageLink = m.PageLink,
                                   Status = m.Status,
                                   Alias_Cate = c.Alias
                               };
            ViewBag.get_category = get_category.ToList();


 
            return PartialView(model);
        }
        public PartialViewResult LoadParent(int id)
        {
            var model = db.MenuNavigations.Where(x => x.MenuParents == id && x.Status == true).OrderBy(x => x.Sequence).ToList();
            ViewBag.count = model.Count();



            var get_category = from m in db.MenuNavigations
                               join c in db.Categories
                               on m.GroupLink equals c.CategoryID
                               where m.Status == true
                               select new Navigation
                               {
                                   MenuID = m.MenuID,
                                   MenuName = m.MenuName,
                                   Sequence = m.Sequence,
                                   IconMenu = m.IconMenu,
                                   MenuParents = m.MenuParents,
                                   PageStyle = m.PageStyle,
                                   CategoryID = c.CategoryID,
                                   CategoryName = c.CategoryName,
                                   CreatedAt = m.CreatedAt,
                                   FormatPage = m.FormatPage,
                                   GroupLink = m.GroupLink,
                          
                                   PageContent = m.PageContent,
                                   PageLink = m.PageLink,
                                   Status = m.Status,
                                   Alias_Cate = c.Alias
                               };
            ViewBag.get_category = get_category.ToList();


        



            return PartialView("LoadParent", model);
        }


        [ChildActionOnly]
        public PartialViewResult Header()
        {

            var getglobal = db.Configures.Take(1).ToList();


            return PartialView(getglobal);
        }



        public PartialViewResult Footer()
        {

            var getglobal = db.Configures.Where(x => x.ConfigID == 1);

            return PartialView(getglobal.ToList());
        }


        public PartialViewResult BottomFixed()
        {

            var getgls = db.Configures.Where(x => x.ConfigID == 1);

            return PartialView(getgls.ToList());
        }


        public PartialViewResult Slider()
        {
            var getBanner = db.Homes.Take(1).ToList();

            ViewBag.getBanner = getBanner;

            var model = db.Slides.Where(x => x.Status == true).OrderBy(x => x.SortID).ToList();
            return PartialView(model);
        }


        public JsonResult GetQuickView(int id)
        {
            ImageProducts image = new ImageProducts();
            var result = (from p in db.Products
                          join c in db.Categories
   on p.CategoryID equals c.CategoryID
                          where p.ProductID == id && p.Status == true
                          select new ProductModel
                          {
                              ProductID = p.ProductID,
                              ProductName = p.ProductName,
                              Price = p.Price,
                              PriceSale = p.PriceSale,
                              Alias = p.Alias,
                              Images = p.Images,
                              Quanlity = p.Quanlity,
                              CategoryID = p.CategoryID,
                              Status = p.Status,
                              DescriptShort = p.DescriptShort,
                              CategoryName = c.CategoryName,
                          }).ToList();

            image.Product = result;
            var image_product = (from i in db.ImageProducts
                                 join p in db.Products
                                 on i.ProductID equals p.ProductID
                                 where p.ProductID == id && p.Status == true
                                 select new ImageMores
                                 {
                                     FileImages = i.FileImages
                                 }).ToList();
            image.Image = image_product;
            return new JsonResult() { Data = image, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }



        public PartialViewResult HeaderCart()
        {
            var session_cart = Session["CartItem"];
            var list = new List<CartModel>();
            if (session_cart != null)
            {
                list = (List<CartModel>)session_cart;
            }
            return PartialView(list);
        }


        public PartialViewResult MetaView()
        {
            var model = db.Configures.ToList();
            return PartialView(model);
        }



        public ActionResult Contact(string MenuName)
        {
            var config = db.Configures.ToList();
            return View(config);
        }


        public ActionResult AddContact(string fullname, string phone, string email, string content_comment)
        {
            Contact contact = new Contact();
            contact.FullName = fullname;
            contact.Phone = phone;
            contact.Email = email;
            contact.Content = content_comment;
            contact.ViewStatus = false;
            contact.CreatedAt = DateTime.Now;
            db.Contacts.Add(contact);
            try { 
            db.SaveChanges(); }
            catch
            {

                TempData["displaycontact"] = "display:block!important";
                TempData["thankyou"] = " Cảm ơn Bạn Đã Liên Hệ Chúng Tôi Sẽ Liên Lạc Với Bạn Sớm Nhất...";
                return RedirectToAction("Contact");
            }

            TempData["displaycontact"] = "display:block!important";
            TempData["thankyou"] = " Cảm ơn Bạn Đã Liên Hệ Chúng Tôi Sẽ Liên Lạc Với Bạn Sớm Nhất...";
            return RedirectToAction("Contact");
        }


    }
}