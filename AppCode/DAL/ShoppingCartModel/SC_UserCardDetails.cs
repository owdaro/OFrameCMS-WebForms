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
    
    public partial class SC_UserCardDetails
    {
        public int UserCardDetailsID { get; set; }
        public string Title { get; set; }
        public string Username { get; set; }
        public string NameOnCard { get; set; }
        public int CardTypeID { get; set; }
        public string CardNumber { get; set; }
        public string SecurityCode { get; set; }
        public Nullable<System.DateTime> ValidFrom { get; set; }
        public Nullable<System.DateTime> ValidTill { get; set; }
    
        public virtual SC_Users MS_Users { get; set; }
        public virtual SC_CardTypes SC_CardTypes { get; set; }
    }
}
