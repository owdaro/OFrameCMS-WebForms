﻿<%@ Page Async="true" Title="" Language="C#" AutoEventWireup="true" CodeBehind="ClientAdd.aspx.cs" Inherits="ProjectJKL.UI.Pages.Admin.Media.ClientAdd" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="onecolumn">
        <div class="header">
            <span><span class="ico color window"></span>Add New Client</span>
        </div>
        <div class="Clear">
        </div>
        <div class="uibutton-toolbar btn-group">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn" NavigateUrl="~/UI/Pages/Admin/Media/ClientList.aspx">
                <i class="icon-list-ul"></i> List Clients
                </asp:HyperLink>
            </div>
        <div class="content">
            <asp:UpdatePanel runat="server" ID="UpdatePanel1" ClientIDMode="Static">
                <ContentTemplate>
                    <OWD:TextBoxAdv runat="server" ID="TitleTextBox" LabelText="Title" SmallLabelText="title of the client" RequiredErrorMessage="client title is required" MaxLength="250" />
                    <OWD:TextBoxAdv runat="server" ID="DescriptionTextBox" LabelText="Description" SmallLabelText="description of the client" MaxLength="500" TextMode="MultiLine" />
                    <OWD:FormToolbar runat="server" ID="FormToolbar1" ShowSave="true" ShowCancel="true" />
                    <OWD:StatusMessageJQuery runat="server" ID="StatusMessage" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:content>