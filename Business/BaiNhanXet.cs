//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Business
{
    using System;
    using System.Collections.Generic;
    
    public partial class BaiNhanXet
    {
        public BaiNhanXet()
        {
            this.BinhChon = new HashSet<BinhChon>();
            this.BinhLuan = new HashSet<BinhLuan>();
        }
    
        public int MaSo { get; set; }
        public Nullable<int> MS_Phim { get; set; }
        public string MS_TaiKhoan { get; set; }
        public string NoiDung { get; set; }
        public Nullable<System.DateTime> NgayDang { get; set; }
        public Nullable<bool> TinhTrang { get; set; }
    
        public virtual Phim Phim { get; set; }
        public virtual ThanhVien ThanhVien { get; set; }
        public virtual ICollection<BinhChon> BinhChon { get; set; }
        public virtual ICollection<BinhLuan> BinhLuan { get; set; }
        public virtual AspNetUsers AspNetUsers { get; set; }
    }
}
