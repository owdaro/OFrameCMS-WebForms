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
    
    public partial class GY_Layers
    {
        public GY_Layers()
        {
            this.GY_LayerProperties = new HashSet<GY_LayerProperties>();
        }
    
        public long LayerID { get; set; }
        public long SlideID { get; set; }
        public string LayerContentType { get; set; }
        public string LayerContent { get; set; }
        public string Title { get; set; }
        public bool Hide { get; set; }
    
        public virtual ICollection<GY_LayerProperties> GY_LayerProperties { get; set; }
        public virtual GY_Slides GY_Slides { get; set; }
    }
}
