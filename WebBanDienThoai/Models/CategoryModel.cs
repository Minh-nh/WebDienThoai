using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class CategoryModel
    {
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }

        public string Alias { get; set; }

        public string Images { get; set; }

        public string Content { get; set; }

        public string MetaTitle { get; set; }

        public string MetaKeyword { get; set; }

        public string MetaDescription { get; set; }

        public string Author { get; set; }

        public DateTime? CreatedAt { get; set; }

        public bool Status { get; set; }
    }
}