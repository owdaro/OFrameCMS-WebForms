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
    
    public partial class SC_Ratings
    {
        public SC_Ratings()
        {
            this.SC_Reviews = new HashSet<SC_Reviews>();
        }
    
        public int RatingID { get; set; }
        public int ProductID { get; set; }
        public double Rating { get; set; }
    
        public virtual SC_Products SC_Products { get; set; }
        public virtual ICollection<SC_Reviews> SC_Reviews { get; set; }
    }
}
