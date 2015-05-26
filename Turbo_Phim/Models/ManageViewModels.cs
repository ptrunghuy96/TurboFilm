﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
namespace Turbo_Phim.Models
{
    public class IndexViewModel
    {
        public bool HasPassword { get; set; }
        public IList<UserLoginInfo> Logins { get; set; }
        public string PhoneNumber { get; set; }
        public bool TwoFactor { get; set; }
        public bool BrowserRemembered { get; set; }
    }

    public class ManageLoginsViewModel
    {
        public IList<UserLoginInfo> CurrentLogins { get; set; }
        public IList<AuthenticationDescription> OtherLogins { get; set; }
    }

    public class FactorViewModel
    {
        public string Purpose { get; set; }
    }

    public class SetPasswordViewModel
    {
        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class ChangePasswordViewModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Current password")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class AddPhoneNumberViewModel
    {
        [Required]
        [Phone]
        [Display(Name = "Phone Number")]
        public string Number { get; set; }
    }

    public class VerifyPhoneNumberViewModel
    {
        [Required]
        [Display(Name = "Code")]
        public string Code { get; set; }

        [Required]
        [Phone]
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }
    }

    public class ConfigureTwoFactorViewModel
    {
        public string SelectedProvider { get; set; }
        public ICollection<System.Web.Mvc.SelectListItem> Providers { get; set; }
    }


    public class UpdateProfileViewModal
    {
        [Required]
        [EmailAddress(ErrorMessage = "Vui lòng nhập đúng định dạng email.")]
        [Display(Name = "Email")]
        //[System.Web.Mvc.Remote("doesUserNameExist", "Account", HttpMethod = "POST", ErrorMessage = "Email đã được sử dụng! Vui lòng chọn email khác!")]
        public string Email { get; set; }

        //[Required]
        //[StringLength(20, ErrorMessage = "Mật khẩu phải ít nhất 6 kí tự.", MinimumLength = 6)]
        //[DataType(DataType.Password)]
        //[Display(Name = "Mật khẩu")]
        //public string Password { get; set; }

        //[DataType(DataType.Password)]
        //[Display(Name = "Nhập lại mật khẩu")]
        //[Compare("Password", ErrorMessage = "Mật khẩu nhập lại không trùng khớp")]
        //public string ConfirmPassword { get; set; }

        [Display(Name = "Họ và tên")]
        public string Name { get; set; }

        [Display(Name = "Giới tính")]
        public string Gender
        {
            get { return IsMale ? "Nam" : "Nữ"; }
            set { IsMale = value == "Nam" ? true : false; }
        }
        public bool IsMale { get; set; }

        [Display(Name = "Ngày tháng năm sinh")]
        [DataType(DataType.Date, ErrorMessage = "Định dạng ngày tháng không đúng!"),
        DisplayFormat(DataFormatString = "dd/MM/yyyy",
            ApplyFormatInEditMode = true)]
        public Nullable<DateTime> Birthday { get; set; }

        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }
    }
}