
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanDienThoai.Models;

namespace WebBanDienThoai.Models
{
    [Serializable]
    public class CartModel
    {

        public Product Product { get; set; }

        public int Quanlity { get; set; }

    }
}