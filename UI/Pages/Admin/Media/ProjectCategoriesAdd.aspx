﻿<%@ Page Async="true" Title="" Language="C#" AutoEventWireup="true" CodeBehind="ProjectCategoriesAdd.aspx.cs" Inherits="ProjectJKL.UI.Pages.Admin.Media.ProjectCategoriesAdd"
    MasterPageFile="~/Themes/Default/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="onecolumn">
        <div class="header">
            <span><span class="ico color window"></span>Add New Project Category</span>
        </div>
        <div class="Clear">
        </div>
        <div class="uibutton-toolbar btn-group">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn" NavigateUrl="~/UI/Pages/Admin/Media/ProjectCategoriesList.aspx">
                <i class="icon-list-ul"></i> List Project Categories
            </asp:HyperLink>
        </div>
        <div class="content">
            <asp:UpdatePanel runat="server" ID="UpdatePanel1" ClientIDMode="Static">
                <ContentTemplate>
                    <OWD:TextBoxAdv runat="server" ID="TitleTextBox" LabelText="Title" SmallLabelText="title of the project category" RequiredErrorMessage="title is required" MaxLength="100" />
                    <OWD:TextBoxAdv runat="server" ID="DescriptionTextBox" LabelText="Description" SmallLabelText="description of the project category" MaxLength="500" TextMode="MultiLine" />
                    <OWD:FormToolbar runat="server" ID="FormToolbar1" ShowSave="true" ShowCancel="true" />
                    <OWD:StatusMessageJQuery runat="server" ID="StatusMessage" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>