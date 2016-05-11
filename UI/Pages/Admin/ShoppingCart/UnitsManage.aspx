﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="UnitsManage.aspx.cs"
    Inherits="ProjectJKL.UI.Pages.Admin.ShoppingCart.UnitsManage" Async="true" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="onecolumn">
        <div class="header">
            <span><span class="ico color window"></span>Manage Unit</span>
        </div>
        <div class="Clear">
        </div>
        <div class="content">
            <div class="uibutton-toolbar btn-group">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn" NavigateUrl="~/UI/Pages/Admin/ShoppingCart/UnitsList.aspx">
                <i class="icon-list-ul"></i> List Units
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl="~/UI/Pages/Admin/ShoppingCart/UnitsAdd.aspx">
                <i class="icon-plus-sign"></i> Add Unit
                </asp:HyperLink>
            </div>
            <asp:UpdatePanel runat="server" ID="UpdatePanel1" ClientIDMode="Static">
                <ContentTemplate>
                    <OWD:TextBoxAdv ID="TitleTextBox" runat="server" LabelText="Title" SmallLabelText="unit title" RequiredErrorMessage="unit title is required"
                        MaxLength="50" />
                    <OWD:TextBoxAdv ID="DescriptionTextBox" runat="server" LabelText="Description" SmallLabelText="unit description" TextMode="MultiLine" MaxLength="250" />
                    <OWD:DropDownListAdv runat="server" ID="SectionsDropDownList" LabelText="Section"
                        SmallLabelText="section to which this unit belongs" InitialValue="-1" RequiredFieldErrorMessage="please select a section"
                        AutoPostBack="true" OnChange="return OnChange(this);" />
                    <OWD:DropDownListAdv runat="server" ID="CategoriesDropDownList" LabelText="Category"
                        SmallLabelText="category to which this unit belongs" InitialValue="-1"
                        RequiredFieldErrorMessage="please select a category" AutoPostBack="true" OnChange="return OnChange(this);" />
                    <OWD:DropDownListAdv runat="server" ID="SubCategoriesDropDownList" LabelText="Sub Category"
                        SmallLabelText="sub category to which this unit belongs" InitialValue="-1"
                        RequiredFieldErrorMessage="please select a sub category" />
                    <OWD:FormToolbar runat="server" ID="FormToolbar1" ShowSave="true" ShowCancel="true" ShowDelete="true" />
                    <OWD:StatusMessageJQuery runat="server" ID="StatusMessage" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:content>