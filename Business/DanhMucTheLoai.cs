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
    
    public partial class DanhMucTheLoai
    {
        public DanhMucTheLoai()
        {
            this.Phim = new HashSet<Phim>();
        }
    
        public int MaSo { get; set; }
        public string TenTheLoai { get; set; }
        public Nullable<bool> TinhTrang { get; set; }
    
        public virtual ICollection<Phim> Phim { get; set; }
    }
}
