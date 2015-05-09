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
    
    public partial class ThanhVien
    {
        public ThanhVien()
        {
            this.BaiNhanXet = new HashSet<BaiNhanXet>();
            this.BinhChon = new HashSet<BinhChon>();
            this.BinhLuan = new HashSet<BinhLuan>();
            this.DanhGia = new HashSet<DanhGia>();
        }
    
        public int MaSo { get; set; }
        public string HoTen { get; set; }
        public Nullable<int> MS_TaiKhoan { get; set; }
        public string DiaChi { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public Nullable<bool> TinhTrang { get; set; }
        public Nullable<bool> GioiTinh { get; set; }
    
        public virtual ICollection<BaiNhanXet> BaiNhanXet { get; set; }
        public virtual ICollection<BinhChon> BinhChon { get; set; }
        public virtual ICollection<BinhLuan> BinhLuan { get; set; }
        public virtual ICollection<DanhGia> DanhGia { get; set; }
        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
