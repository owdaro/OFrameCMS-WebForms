﻿using OWDARO;
using System;

namespace ProjectJKL.UI.Pages.Admin.Gallery
{
    public partial class FileList : System.Web.UI.Page
    {
        protected void Page_load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LanguagesDropDownList.DataTextField = "Name";
                LanguagesDropDownList.DataValueField = "Locale";
                LanguagesDropDownList.DataSource = OWDARO.Settings.LanguageHelper.GetLanguages();
                LanguagesDropDownList.DataBind();
                LanguagesDropDownList.SelectedValue = AppConfig.DefaultLocale;

                FilesSelectComponent1.FoldersSelectComponent.Locale = LanguagesDropDownList.SelectedValue;
            }

            LanguagesDropDownList.SelectedIndexChanged += LanguagesDropDownList_SelectedIndexChanged;
        }

        private async void LanguagesDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            FilesSelectComponent1.FoldersSelectComponent.Locale = LanguagesDropDownList.SelectedValue;

            await FilesSelectComponent1.FoldersSelectComponent.LoadData();
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = OWDARO.UserRoles.MasterPage;
            this.Master.MasterPageFile = OWDARO.Util.Utilities.GetZiceThemeFile();
        }
    }
}