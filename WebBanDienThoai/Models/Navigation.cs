using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class Navigation
    {
        public int MenuID { get; set; }

        public int? Sequence { get; set; }

        public string MenuName { get; set; }



        public string IconMenu { get; set; }



        public int MenuParents { get; set; }


        public int PageStyle { get; set; }


        public int? FormatPage { get; set; }


        public int? GroupLink { get; set; }


        public string PageContent { get; set; }


        public string PageLink { get; set; }



        public string MetaTitle { get; set; }


        public string MetaKeyword { get; set; }


        public string MetaDescription { get; set; }



        public DateTime? CreatedAt { get; set; }


        public bool Status { get; set; }


        public int CategoryID { get; set; }

        public string CategoryName { get; set; }

        public string Alias_Cate { get; set; }

        public int BlogID { get; set; }

        public string BlogName { get; set; }

        public string Alias_Blog { get; set; }
    }
}