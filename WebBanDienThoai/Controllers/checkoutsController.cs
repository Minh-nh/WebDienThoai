using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class checkoutsController : Controller
    {
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        // GET: checkouts
        public ActionResult Index()
        {
            var session_cart = Session["CartItem"];
            var list = new List<CartModel>();
            if (session_cart != null)
            {
                list = (List<CartModel>)session_cart;
            }

            if (Session["customerID"] == null)
            {
                return RedirectToAction("LoginAccount", "Login");
            }
            else
            {

                int id = Convert.ToInt32(Session["customerID"].ToString());
                var customer = db.Customers.Where(x => x.customerID == id).ToList().Distinct();
                var payment = db.Payments.Where(x => x.Status == true).ToList().Distinct();
                ViewBag.customer = customer;
                ViewBag.payment = payment;
            }
            return View(list);
        }

        public ActionResult AddOrderDetails( int PaymentID, decimal TotalProduct, string Note)
        {
            var order = new Order();

            order.CreatedAt = DateTime.Now;
            int id = Convert.ToInt32(Session["customerID"].ToString());
            order.customerID = id;
            order.PaymentID = PaymentID;
            order.Status = 1;
            order.TotalMoney = TotalProduct;
            order.ViewStatus = false;
            order.Note = Note;
           
            db.Orders.Add(order);

            var session_cart = (List<CartModel>)Session["CartItem"];
            foreach (var item in session_cart)
            {
                var orderdl = new OrderDetail();
                orderdl.ProductID = item.Product.ProductID;
                orderdl.orderID = order.orderID;
                orderdl.Price =(decimal) item.Product.Price;
                orderdl.Quanlity = item.Quanlity;
                orderdl.TotalProduct = (decimal)(orderdl.Quanlity * orderdl.Price) ;
                db.OrderDetails.Add(orderdl);
                orderdl.Status = true;
            }

            db.SaveChanges();
            Session["CartItem"] = null;
            return RedirectToAction("thankyou");
        }

        public ActionResult thankyou()
        {
            return View();
        }
    }
}