//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.MediaModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class ME_PostCategories
    {
        public ME_PostCategories()
        {
            this.ME_ChildPostCategories = new HashSet<ME_PostCategories>();
            this.ME_Posts = new HashSet<ME_Posts>();
        }
    
        public int PostCategoryID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool Hide { get; set; }
        public Nullable<int> ParentPostCategoryID { get; set; }
        public Nullable<int> ImageID { get; set; }
        public string Locale { get; set; }
    
        public virtual ICollection<ME_PostCategories> ME_ChildPostCategories { get; set; }
        public virtual ME_PostCategories ME_ParentPostCategory { get; set; }
        public virtual ICollection<ME_Posts> ME_Posts { get; set; }
    }
}
