//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyNhanSu.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LUONG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LUONG()
        {
            this.NHANVIENs = new HashSet<NHANVIEN>();
        }
    
        public int BacLuong { get; set; }
        public Nullable<long> LuongCB { get; set; }
        public Nullable<long> HSLuong { get; set; }
        public Nullable<long> HSPhuCap { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NHANVIEN> NHANVIENs { get; set; }
    }
}
