//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Business
{
    using System;
    using System.Collections.Generic;
    
    public partial class TaiKhoan
    {
        public TaiKhoan()
        {
            this.ThanhVien = new HashSet<ThanhVien>();
        }
    
        public int MaSo { get; set; }
        public string TenDangNhap { get; set; }
        public string MatKhau { get; set; }
        public string Email { get; set; }
        public Nullable<int> MS_PhanQuyen { get; set; }
        public Nullable<bool> TinhTrang { get; set; }
    
        public virtual PhanQuyen PhanQuyen { get; set; }
        public virtual ICollection<ThanhVien> ThanhVien { get; set; }
    }
}
