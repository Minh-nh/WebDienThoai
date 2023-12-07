using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using WebBanDienThoai.Models;

namespace WebBanDienThoai
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Session_Start()
        {
            Session["UserID"] = null;
            Session["Username"] = null;
            Session["Email"] = null;
            Session["Password"] = null;
            Session["Image"] = null;
            Session["CartItem"] = null;
            Session["countnewcart"] = null;

        }
    }
}
