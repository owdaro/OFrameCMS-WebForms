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
    
    public partial class ME_PortfolioCategories
    {
        public int PortfolioCategoryID { get; set; }
        public int PortfolioID { get; set; }
        public int ProjectCategoryID { get; set; }
    
        public virtual ME_Portfolios ME_Portfolios { get; set; }
        public virtual ME_ProjectCategories ME_ProjectCategories { get; set; }
    }
}
