using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WebBanDienThoai
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Product Category",
                url: "products/{CategoryID}/{ProductID}/{Alias}",
                defaults: new { controller = "Product", action = "ProductHome", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "Collection All",
                url: "collections/all",
                defaults: new { controller = "collections", action = "CollectionAll", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "Colllection ID",
                url: "collections/{CategoryID}/{Alias}",
                defaults: new { controller = "collections", action = "GetCollectionID", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "Cart",
                url: "addcart",
                defaults: new { controller = "cart", action = "AddCart", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "check out",
                url: "checkouts",
                defaults: new { controller = "checkouts", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "thank you",
                url: "thankyou",
                defaults: new { controller = "checkouts", action = "thankyou", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "page",
                url: "pages/{MenuID}/{MenuName}",
                defaults: new { controller = "pages", action = "GetPageID", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "contact",
                url: "pages/{MenuName}",
                defaults: new { controller = "Home", action = "Contact", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "WebBanDienThoai.Controllers" }
            );
        }
    }
}
