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
    
    public partial class DanhSachPhimYeuThich
    {
        public int MaSo { get; set; }
        public string MS_ThanhVien { get; set; }
        public Nullable<int> MS_Phim { get; set; }
    
        public virtual Phim Phim { get; set; }
        public virtual ThanhVien ThanhVien { get; set; }
    }
}
