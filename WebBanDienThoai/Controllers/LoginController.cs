using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDienThoai.Models;
using MailKit.Net.Smtp;
using MimeKit;

namespace WebBanDienThoai.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        private WEBBANDIENTHOAIEntities db = new WEBBANDIENTHOAIEntities();
        public ActionResult LoginAccount()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginAccount(string email, string password)
        {

            var loginKh = db.Customers.SingleOrDefault(x => x.Email == email && x.Password == password && x.Status == true);
            //Md5Encode md5 = new Md5Encode();
            //var passmd5 = md5.EncodeMd5Encrypt(password);
            var login = db.Users.SingleOrDefault(x => x.Email == email && x.Password == password && x.Status == true);

            if (login != null)
            {


                Session["UserID"] = login.UserID;
                Session["Username"] = login.Username;
                Session["Email"] = login.Email;
                Session["Password"] = login.Password;
                Session["Image"] = login.Image;
                return Redirect("~/AdminHome/Index");


            }
            else

            if (loginKh != null)
            {
                Session["customerID"] = loginKh.customerID;
                Session["customerName"] = loginKh.customerName;
                Session["Email"] = loginKh.Email;
                Session["Password"] = loginKh.Password;

                return Redirect("~/Home/Index");
            }

            else
            {

                ViewBag.error = "Tên Tài Khoản Hoặc Mật Khẩu Không Đúng";
            }

            return View();
        }
        public ActionResult RegisterUser()
        {
            return View();
        }
        [HttpPost]
        public ActionResult RegisterUser(Customer _user)
        {
            if (ModelState.IsValid)
            {
                var check_id = db.Customers.Where(s => s.Email == _user.Email).FirstOrDefault();
                if (check_id == null)
                {
                    if (_user.Password == _user.ComfirmPass)
                    {

                        _user.CreatedAt = DateTime.Now;
                        _user.Status = true;
                        db.Configuration.ValidateOnSaveEnabled = false;

                        db.Customers.Add(_user);
                        db.SaveChanges();
                        return RedirectToAction("LoginAccount");
                    }
                    else
                    {
                        ViewBag.ErrorRegister1 = "Mật khẩu không trùng khớp! ";
                    }
                }
                else
                {
                    ViewBag.ErrorRegister = "Email đã tồn tại! ";
                    return View();
                }
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult ForgotPass(string email)
        {
            Customer cus = db.Customers.Where(s => s.Email == email).FirstOrDefault();
            #region Send mail


            MimeMessage message = new MimeMessage();

            MailboxAddress from = new MailboxAddress("Admin",
            "lanam.9907704@gmail.com");
            message.From.Add(from);

            MailboxAddress to = new MailboxAddress("User", cus.Email);
            message.To.Add(to);

            message.Subject = "Reset Mật khẩu thành công";
            BodyBuilder bodyBuilder = new BodyBuilder();
            bodyBuilder.HtmlBody = $"<h1>Mật khẩu của bạn là: {cus.Password}  </h1>";
            bodyBuilder.TextBody = "Mật Khẩu của bạn";
            message.Body = bodyBuilder.ToMessageBody();
            // xac thuc email
            SmtpClient client = new SmtpClient();
            //connect (smtp address, port , true)
            client.Connect("smtp.gmail.com", 465, true);
            client.Authenticate("lanam.990704@gmail.com", "qceonpbfjcgpdvoa");
            //send email
            client.Send(message);
            client.Disconnect(true);
            client.Dispose();
            #endregion
            return RedirectToAction("LoginAccount");
        }


    }
}