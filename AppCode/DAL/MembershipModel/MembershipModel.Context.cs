﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.MembershipModel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MembershipEntities : DbContext
    {
        public MembershipEntities()
            : base("name=MembershipEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<MS_EducationQualificationTypes> MS_EducationQualificationTypes { get; set; }
        public DbSet<MS_UserAdresses> MS_UserAdresses { get; set; }
        public DbSet<MS_UserCategories> MS_UserCategories { get; set; }
        public DbSet<MS_UserEducations> MS_UserEducations { get; set; }
        public DbSet<MS_Users> MS_Users { get; set; }
        public DbSet<MS_UsersData> MS_UsersData { get; set; }
        public DbSet<MS_UserWorks> MS_UserWorks { get; set; }
    }
}
