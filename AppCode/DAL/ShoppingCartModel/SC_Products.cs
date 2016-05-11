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
    
    public partial class SC_Products
    {
        public SC_Products()
        {
            this.SC_CouponProducts = new HashSet<SC_CouponProducts>();
            this.SC_DiscountRanges = new HashSet<SC_DiscountRanges>();
            this.SC_DiscountRules = new HashSet<SC_DiscountRules>();
            this.SC_Highlights = new HashSet<SC_Highlights>();
            this.SC_OrderDetails = new HashSet<SC_OrderDetails>();
            this.SC_ProductDownloads = new HashSet<SC_ProductDownloads>();
            this.SC_ProductIcons = new HashSet<SC_ProductIcons>();
            this.SC_ProductImages = new HashSet<SC_ProductImages>();
            this.SC_ProductLocks = new HashSet<SC_ProductLocks>();
            this.SC_ProductVideos = new HashSet<SC_ProductVideos>();
            this.SC_Ratings = new HashSet<SC_Ratings>();
            this.SC_Reviews = new HashSet<SC_Reviews>();
            this.SC_TempCart = new HashSet<SC_TempCart>();
            this.SC_UserCart = new HashSet<SC_UserCart>();
        }
    
        public int ProductID { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string Description { get; set; }
        public Nullable<double> CostPrice { get; set; }
        public Nullable<double> Price { get; set; }
        public Nullable<double> AvailableQuantity { get; set; }
        public bool IsPriceOnRequest { get; set; }
        public bool HasDiscount { get; set; }
        public Nullable<double> DiscountPercentage { get; set; }
        public Nullable<double> DiscountAmount { get; set; }
        public bool IsDiscountRangeEnabled { get; set; }
        public string PriceDescription { get; set; }
        public string SpecialOffer { get; set; }
        public string Details { get; set; }
        public bool PreOderFlag { get; set; }
        public string PreOrderDescription { get; set; }
        public Nullable<System.DateTime> PreOrderReleaseDate { get; set; }
        public bool RemovePreOrderOnDate { get; set; }
        public int SectionID { get; set; }
        public int CategoryID { get; set; }
        public int SubCategoryID { get; set; }
        public Nullable<int> ProductModelID { get; set; }
        public Nullable<int> ProductTypeID { get; set; }
        public Nullable<int> AvailabilityTypeID { get; set; }
        public Nullable<int> BrandID { get; set; }
        public Nullable<int> UnitID { get; set; }
        public Nullable<int> SizeID { get; set; }
        public Nullable<int> ColorID { get; set; }
        public bool Hide { get; set; }
        public string Model { get; set; }
        public string Manufacturer { get; set; }
        public string ItemNumber { get; set; }
        public Nullable<double> MaxOQ { get; set; }
        public Nullable<double> MinOQ { get; set; }
        public string Tags { get; set; }
        public int Likes { get; set; }
        public System.DateTime UploadedOn { get; set; }
        public bool ShowInCart { get; set; }
        public double SoldOutCount { get; set; }
        public string Barcode { get; set; }
        public bool IsDownloadable { get; set; }
        public string StringField1 { get; set; }
        public string StringField2 { get; set; }
        public string StringField3 { get; set; }
        public Nullable<double> FloatField1 { get; set; }
        public Nullable<double> FloatField2 { get; set; }
        public Nullable<double> FloatField3 { get; set; }
        public Nullable<int> IntField1 { get; set; }
        public Nullable<int> IntField2 { get; set; }
        public Nullable<int> IntField3 { get; set; }
    
        public virtual SC_AvailabilityTypes SC_AvailabilityTypes { get; set; }
        public virtual SC_Brands SC_Brands { get; set; }
        public virtual SC_Categories SC_Categories { get; set; }
        public virtual SC_Colors SC_Colors { get; set; }
        public virtual ICollection<SC_CouponProducts> SC_CouponProducts { get; set; }
        public virtual ICollection<SC_DiscountRanges> SC_DiscountRanges { get; set; }
        public virtual ICollection<SC_DiscountRules> SC_DiscountRules { get; set; }
        public virtual ICollection<SC_Highlights> SC_Highlights { get; set; }
        public virtual ICollection<SC_OrderDetails> SC_OrderDetails { get; set; }
        public virtual ICollection<SC_ProductDownloads> SC_ProductDownloads { get; set; }
        public virtual ICollection<SC_ProductIcons> SC_ProductIcons { get; set; }
        public virtual ICollection<SC_ProductImages> SC_ProductImages { get; set; }
        public virtual ICollection<SC_ProductLocks> SC_ProductLocks { get; set; }
        public virtual SC_ProductModels SC_ProductModels { get; set; }
        public virtual SC_ProductTypes SC_ProductTypes { get; set; }
        public virtual SC_Sections SC_Sections { get; set; }
        public virtual SC_Sizes SC_Sizes { get; set; }
        public virtual SC_SubCategories SC_SubCategories { get; set; }
        public virtual SC_Units SC_Units { get; set; }
        public virtual ICollection<SC_ProductVideos> SC_ProductVideos { get; set; }
        public virtual ICollection<SC_Ratings> SC_Ratings { get; set; }
        public virtual ICollection<SC_Reviews> SC_Reviews { get; set; }
        public virtual ICollection<SC_TempCart> SC_TempCart { get; set; }
        public virtual ICollection<SC_UserCart> SC_UserCart { get; set; }
    }
}
