using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class cartController : Controller
    {
        // GET: cart


        public ActionResult Index()
        {
            var session_cart = Session["CartItem"];
            var list = new List<CartModel>();
            if (session_cart != null)
            {
                list = (List<CartModel>)session_cart;
            }
            return View(list);
        }

        public JsonResult AddCart(int ProductID, int Quanlity)
        {
            var product = new ProductCart().ViewDetail(ProductID);
            var session_cart = Session["CartItem"];

            if (session_cart != null)
            {
                var list = (List<CartModel>)session_cart;

                if (list.Exists(x => x.Product.ProductID == ProductID))
                {
                    foreach (var item in list)
                    {
                        if (item.Product.ProductID == ProductID)
                        {
                            item.Quanlity += Quanlity;
                        }
                    }
                }
                else
                {
                    var item = new CartModel();
                    item.Product = product;
                    item.Quanlity = Quanlity;
                    list.Add(item);
                }
                Session["CartItem"] = list;
            }
            else
            {
                var item = new CartModel();
                item.Product = product;
                item.Quanlity = Quanlity;
                var list = new List<CartModel>();

                list.Add(item);

                Session["CartItem"] = list;
            }

            return null;

        }

        public JsonResult UpdateCart(string CartModels)
        {
            var JsonCart = new JavaScriptSerializer().Deserialize<List<CartModel>>(CartModels);
            var sessionCart = (List<CartModel>)Session["CartItem"];

            foreach (var item in sessionCart)
            {
                var itemjson = JsonCart.SingleOrDefault(x => x.Product.ProductID == item.Product.ProductID);
                if (itemjson != null)
                {
                    item.Quanlity = itemjson.Quanlity;
                }
            }

            Session["CartItem"] = sessionCart;

            return Json(new
            {
                status = true
            });
        }


        public JsonResult DeleteOneCart(int id)
        {
            var session_cart = Session["CartItem"];
            var list = (List<CartModel>)session_cart;

            list.RemoveAll(x => x.Product.ProductID == id);

            return Json(new
            {
                status = true
            });
        }


        public JsonResult DeleteCartAll()
        {
            Session["CartItem"] = null;

            return Json(new
            {
                status = true
            });
        }
    }
}