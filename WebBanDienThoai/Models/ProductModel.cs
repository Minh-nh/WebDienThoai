using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class ProductModel
    {
        public bool Collection1_Status { get; set; }

        public string title_category1 { get; set; }

        public int? Collection_home1 { get; set; }

        public string button_more1 { get; set; }

        public bool Collection2_Status { get; set; }

        public string title_category2 { get; set; }

        public string Banner_Collection2 { get; set; }

        public string Banner_Collection2_Link { get; set; }

        public int? Collection_home2 { get; set; }

        public string button_more2 { get; set; }

        public string title_left2 { get; set; }

        public int? Collection_left2 { get; set; }

        public string button_more_left2 { get; set; }

        public bool Collection3_Status { get; set; }

        public string title_category3 { get; set; }

        public string Banner_Collection3 { get; set; }

        public string Banner_Collection3_Link { get; set; }

        public int? Collection_home3 { get; set; }

        public string button_more3 { get; set; }

        public string title_right3 { get; set; }

        public int? Collection_right3 { get; set; }

        public string button_more_right3 { get; set; }

        public bool Collection4_Status { get; set; }

        public string title_category4 { get; set; }

        public string Banner_Collection4 { get; set; }

        public string Banner_Collection4_Link { get; set; }

        public int? Collection_home4 { get; set; }

        public string button_more4 { get; set; }

        public string title_left4 { get; set; }

        public int? Collection_left4 { get; set; }

        public string button_more_left4 { get; set; }


        public bool Blog_Status { get; set; }

        public string title_blog { get; set; }

        public string Blog_home { get; set; }

        public int ProductID { get; set; }

        public string ProductName { get; set; }

        public string Alias { get; set; }

        public decimal? Price { get; set; }

        public decimal? PriceSale { get; set; }

        public string Images { get; set; }

        public int? Quanlity { get; set; }

        public int CategoryID { get; set; }

        public string DescriptShort { get; set; }

        public string Content { get; set; }

        public string MetaTitle { get; set; }

        public string MetaKeyword { get; set; }

        public string Author { get; set; }

        public string MetaDescription { get; set; }


        public string FileImages { get; set; }

        public string CategoryName { get; set; }

        public bool Status { get; set; }
    }
}