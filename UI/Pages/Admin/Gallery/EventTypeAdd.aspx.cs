﻿using System;

namespace ProjectJKL.UI.Pages.Admin.Gallery
{
    public partial class EventTypeAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = OWDARO.UserRoles.MasterPage;
            this.Master.MasterPageFile = OWDARO.Util.Utilities.GetZiceThemeFile();
        }
    }
}