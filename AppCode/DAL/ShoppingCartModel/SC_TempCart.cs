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
    
    public partial class SC_TempCart
    {
        public long CartID { get; set; }
        public string AnonymousUserID { get; set; }
        public int ProductID { get; set; }
        public double Quantity { get; set; }
    
        public virtual SC_Products SC_Products { get; set; }
    }
}