using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class OrderModel
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public decimal? Price { get; set; }
        public int? Quanlity { get; set; }
        public string Images { get; set; }
        public decimal Total { get; set; }
    }
}