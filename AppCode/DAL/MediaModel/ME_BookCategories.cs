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
    
    public partial class ME_BookCategories
    {
        public ME_BookCategories()
        {
            this.ME_Books = new HashSet<ME_Books>();
        }
    
        public int BookCategoryID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool Hide { get; set; }
        public Nullable<int> ImageID { get; set; }
    
        public virtual ICollection<ME_Books> ME_Books { get; set; }
    }
}
