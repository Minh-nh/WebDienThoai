using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class OrdersController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        public ActionResult Index(int? page, string q)
        {
            var count_order = (from or in db.Orders select or.orderID).Count();

            ViewBag.count_product = count_order;

            var model = from p in db.Orders.Include(p=>p.Payment) orderby p.CreatedAt descending select p;
            int pagesize = 15;
            int pageNumber = (page ?? 1);

            if (!string.IsNullOrEmpty(q))
            {
                model = model.Where(x => x.customerID.ToString().Contains(q) || x.orderID.ToString().Contains(q) || x.Payment.PaymentName.Contains(q)).OrderByDescending(x => x.CreatedAt);
            }

            ViewBag.keyword_search = q;


            return View(model.ToPagedList(pageNumber, pagesize));
        }

        // GET: Admin/Orders/Details/5
        public ActionResult Details(int? id)
        {

            Order order = db.Orders.Find(id);

            var listOrder = from g in db.Products
                            join p in db.OrderDetails on g.ProductID equals p.ProductID
                            where p.orderID == id
                            select new OrderModel { ProductID = g.ProductID, ProductName = g.ProductName, Price = g.Price, Images = g.Images, Quanlity = p.Quanlity };
            ViewBag.order_item = listOrder;




            var printorder = from i in db.Configures select new ConfigModel { Logo = i.Logo, Address_NameCompany = i.Address, Hotline = i.Hotline, Email_config = i.Email, NameCompany = i.NameCompany };
            ViewBag.printorder = printorder.ToList();



            order.ViewStatus = true;

            var count_order = (from or in db.Orders where or.ViewStatus == false select or.orderID).Count();

            if (count_order > 0)
            {
                Session["countnewcart"] = count_order;
            }

            db.Entry(order).State = EntityState.Modified;
            db.SaveChanges();
            Customer cus = db.Customers.Find(order.customerID);
            ViewBag.Cus = new Customer()
            {
                customerID = cus.customerID,
                Address = cus.Address,
                customerName = cus.customerName,
                Phone = cus.Phone,
                Email = cus.Email
            };
            return View(order);
        }




        public ActionResult xacThucDonHang(int id)
        {
            Order order = db.Orders.Find(id);
            order.Status = 3;
            db.Entry(order).State = EntityState.Modified;
            db.SaveChanges();


            return RedirectToAction("Details", new { id = order.orderID });
        }


        public ActionResult huyDonhang(int id)
        {
            Order order = db.Orders.Find(id);
            order.Status = 2;
            db.Entry(order).State = EntityState.Modified;
            db.SaveChanges();


            return RedirectToAction("Details", new { id = order.orderID });
        }



        // GET: Admin/Orders/Create
        public ActionResult Create()
        {
            ViewBag.PaymentID = new SelectList(db.Payments, "PaymentID", "PaymentName");
            return View();
        }

        // POST: Admin/Orders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "orderID,customerName,Address,Phone,Email,PaymentID,TotalMoney,CreatedAt,ViewStatus,Status")] Order order)
        {
            if (ModelState.IsValid)
            {
                db.Orders.Add(order);
                db.Entry(order).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PaymentID = new SelectList(db.Payments, "PaymentID", "PaymentName", order.PaymentID);
            return View(order);
        }

        // GET: Admin/Orders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order order = db.Orders.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            ViewBag.PaymentID = new SelectList(db.Payments, "PaymentID", "PaymentName", order.PaymentID);
            return View(order);
        }

        // POST: Admin/Orders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "orderID,customerName,Address,Phone,Email,PaymentID,TotalMoney,CreatedAt,ViewStatus,Status")] Order order)
        {
            if (ModelState.IsValid)
            {
                db.Entry(order).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PaymentID = new SelectList(db.Payments, "PaymentID", "PaymentName", order.PaymentID);
            return View(order);
        }

        // GET: Admin/Orders/Delete/5
        public ActionResult Delete(int? id)
        {
            Order order = db.Orders.Find(id);

            if (order.Status == 2 || order.Status == 3)
            {
                var deleteOrderDetails =
                from details in db.OrderDetails
                where details.orderID == id
                select details;

                foreach (var item in deleteOrderDetails)
                {
                    db.OrderDetails.Remove(item);

                }






                db.Orders.Remove(order);

                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                TempData["displayviss"] = "display:block!important";

                TempData["error_order_delete"] = "Để xóa đơn hàng bạn phải xác nhận thành công đơn hàng hoặc đơn hàng phải trong trạng thái đã hủy";
                return RedirectToAction("Details", new { id = order.orderID });

            }

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