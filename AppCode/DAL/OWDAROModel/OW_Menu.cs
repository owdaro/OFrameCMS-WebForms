//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.OWDAROModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class OW_Menu
    {
        public OW_Menu()
        {
            this.ChildMenus = new HashSet<OW_Menu>();
        }
    
        public int MenuID { get; set; }
        public string Title { get; set; }
        public string IconURL { get; set; }
        public Nullable<int> ParentMenuID { get; set; }
        public string NavigateURL { get; set; }
        public bool IsRoot { get; set; }
        public bool Hide { get; set; }
        public int Position { get; set; }
        public string Locale { get; set; }
    
        public virtual ICollection<OW_Menu> ChildMenus { get; set; }
        public virtual OW_Menu ParentMenu { get; set; }
    }
}
