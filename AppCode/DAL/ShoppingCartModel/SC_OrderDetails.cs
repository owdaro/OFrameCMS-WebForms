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
    
    public partial class SC_OrderDetails
    {
        public long OrderDetailID { get; set; }
        public string OrderNumber { get; set; }
        public int ProductID { get; set; }
        public double Price { get; set; }
        public double Quantity { get; set; }
        public Nullable<System.DateTime> ShipmentDate { get; set; }
        public Nullable<System.DateTime> DeliveryDate { get; set; }
        public Nullable<int> ShipmentCompanyID { get; set; }
        public Nullable<long> TrackingID { get; set; }
    
        public virtual SC_Orders SC_Orders { get; set; }
        public virtual SC_Products SC_Products { get; set; }
        public virtual SC_ShipmentCompanies SC_ShipmentCompanies { get; set; }
        public virtual SC_Trackings SC_Trackings { get; set; }
    }
}
