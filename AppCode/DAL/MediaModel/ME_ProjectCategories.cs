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
    
    public partial class ME_ProjectCategories
    {
        public ME_ProjectCategories()
        {
            this.ME_PortfolioCategories = new HashSet<ME_PortfolioCategories>();
        }
    
        public int ProjectCategoryID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<ME_PortfolioCategories> ME_PortfolioCategories { get; set; }
    }
}
