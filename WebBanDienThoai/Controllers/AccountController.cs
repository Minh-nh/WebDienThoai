using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        public ActionResult Index(int id)
        {

            var model = db.Customers.Where(x => x.customerID == id).FirstOrDefault();
            return View(model);

        }
        // nos bị j z nhĩ
        public ActionResult Edit(int id)
        {
            return View(db.Customers.Where(x => x.customerID == id).FirstOrDefault());

        }
        [HttpPost]
        public ActionResult Edit(Customer cus, int id)
        {
            try
            {
                db.Entry(cus).State = EntityState.Modified;


                db.SaveChanges();
                return RedirectToAction("Index", "Account", new { id = id });
            }
            catch { }
            return View(cus);
        }
        public ActionResult History(int id)
        {
            var model = db.Orders.Where(x => x.customerID == id).ToList();
            return View(model);

        }
        public ActionResult Details(int id)
        {
            var model = db.OrderDetails.Where(x => x.orderID == id).ToArray();
            return View(model);
        }
        public ActionResult ChangePassword(int id)
        {
            return View(db.Customers.Where(x => x.customerID == id).FirstOrDefault());
        }


        [HttpPost]
        public ActionResult ChangePassword(Customer cus, int id)
        {
            var model = db.Customers.Where(x => x.customerID == cus.customerID && x.Password == cus.ComfirmPass).FirstOrDefault();
            if (model != null)
            {
              
                model.Password = cus.Passnew;
                db.Entry(model).State = EntityState.Modified;


                db.SaveChanges();
                return RedirectToAction("Index", "Account", new { id = id });
            }
            else

                ViewBag.ee = "Sai mật khẩu";
            return View();

        }

    }
}
