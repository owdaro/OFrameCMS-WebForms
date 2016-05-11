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
    
    public partial class GY_AudioSet
    {
        public GY_AudioSet()
        {
            this.GY_Audios = new HashSet<GY_Audios>();
        }
    
        public int AudioSetID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool Hide { get; set; }
        public System.DateTime AddedOn { get; set; }
        public Nullable<System.DateTime> TakenOn { get; set; }
        public string Tags { get; set; }
        public string Location { get; set; }
        public int AudioCategoryID { get; set; }
        public Nullable<int> ImageID { get; set; }
        public string Locale { get; set; }
    
        public virtual ICollection<GY_Audios> GY_Audios { get; set; }
        public virtual GY_AudioCategories GY_AudioCategories { get; set; }
    }
}