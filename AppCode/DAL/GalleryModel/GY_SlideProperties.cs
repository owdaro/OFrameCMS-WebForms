//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.GalleryModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class GY_SlideProperties
    {
        public long SlidePropertyID { get; set; }
        public long SlideID { get; set; }
        public string Attribute { get; set; }
        public string Value { get; set; }
        public bool IsImageProperty { get; set; }
    
        public virtual GY_Slides GY_Slides { get; set; }
    }
}
