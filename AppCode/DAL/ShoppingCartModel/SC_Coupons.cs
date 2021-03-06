//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.ShoppingCartModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class SC_Coupons
    {
        public SC_Coupons()
        {
            this.SC_CouponProducts = new HashSet<SC_CouponProducts>();
        }
    
        public long CouponID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Code { get; set; }
        public Nullable<double> DiscountAmountOnTotal { get; set; }
        public Nullable<double> DiscountPercentageOnTotal { get; set; }
        public Nullable<double> DiscountAmountOnEach { get; set; }
        public Nullable<double> DiscountPercentageOnEach { get; set; }
        public Nullable<double> DiscountAmountOnShipping { get; set; }
        public Nullable<double> DiscountPercentageOnShipping { get; set; }
        public bool FreeShipping { get; set; }
        public Nullable<double> MinCartAmount { get; set; }
        public Nullable<int> CouponUseCount { get; set; }
        public Nullable<int> CouponUseCountPerCustomer { get; set; }
        public bool IsEnabled { get; set; }
        public Nullable<System.DateTime> ExpiresOn { get; set; }
        public Nullable<int> SectionID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<int> SubCategoryID { get; set; }
        public Nullable<int> BrandID { get; set; }
    
        public virtual SC_Brands SC_Brands { get; set; }
        public virtual SC_Categories SC_Categories { get; set; }
        public virtual ICollection<SC_CouponProducts> SC_CouponProducts { get; set; }
        public virtual SC_Sections SC_Sections { get; set; }
        public virtual SC_SubCategories SC_SubCategories { get; set; }
    }
}
