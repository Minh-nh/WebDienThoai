using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebBanDienThoai.Models
{
    public class ModelCustomer
    {
       [Key]
        public int customerID { get; set; }

        [Display(Name = "Họ Tên")]
        [Required(ErrorMessage = "Họ Tên Không Được Bỏ Trống")]
        [MaxLength(50, ErrorMessage = "Họ Tên Không Được Vượt Quá 50 Kí Tự")]
        public string customerName { get; set; }


        [Display(Name = "Email")]
        [Column(TypeName = "varchar")]
        [Required(ErrorMessage = "Email Không Được Bỏ Trống")]
        [MaxLength(50, ErrorMessage = "Email Không Được Quá 50 Kí Tự")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Mật Khẩu Không Được Bỏ Trống")]
        [Display(Name = "Mật Khẩu")]
        [MaxLength(250, ErrorMessage = "Mật Khẩu Không Được Vượt Quá 250 Kí Tự")]
        [Column(TypeName = "varchar")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required(ErrorMessage = "Địa Chỉ Không Được Bỏ Trống")]
        [Display(Name = "Địa Chỉ")]
        [MaxLength(250, ErrorMessage = "Địa Chỉ Không Được Vượt Quá 250 Kí Tự")]
        public string Address { get; set; }
        [Required(ErrorMessage = "Số Điện Thoại Không Được Bỏ Trống")]
        [Display(Name = "Số Điện Thoại")]
        [Column(TypeName = "varchar")]
        [MaxLength(11, ErrorMessage = "Số Điện Thoại Không Hợp Lệ")]
        public string Phone { get; set; }
        [Display(Name = "Ngày Đăng Kí")]
        public Nullable<System.DateTime> CreatedAt { get; set; }
        
        [Display(Name = "Trạng Thái")]
        public bool Status { get; set; }

     
       
    }
}