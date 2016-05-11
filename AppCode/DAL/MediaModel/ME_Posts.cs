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
    
    public partial class ME_Posts
    {
        public ME_Posts()
        {
            this.ME_Posts1 = new HashSet<ME_Posts>();
        }
    
        public int PostID { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string PostContent { get; set; }
        public string Tags { get; set; }
        public System.DateTime AddedOn { get; set; }
        public string Username { get; set; }
        public bool Hide { get; set; }
        public int PostCategoryID { get; set; }
        public Nullable<int> ParentPostID { get; set; }
        public Nullable<int> ImageID { get; set; }
        public string Locale { get; set; }
    
        public virtual ME_PostCategories ME_PostCategories { get; set; }
        public virtual ICollection<ME_Posts> ME_Posts1 { get; set; }
        public virtual ME_Posts ME_Posts2 { get; set; }
    }
}
