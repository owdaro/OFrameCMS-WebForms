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
    
    public partial class SC_Reviews
    {
        public int ReviewID { get; set; }
        public int ProductID { get; set; }
        public System.DateTime DateTime { get; set; }
        public string Username { get; set; }
        public string Review { get; set; }
        public bool Approved { get; set; }
        public bool Hide { get; set; }
        public int RatingID { get; set; }
    
        public virtual SC_Users MS_Users { get; set; }
        public virtual SC_Products SC_Products { get; set; }
        public virtual SC_Ratings SC_Ratings { get; set; }
    }
}
