﻿<%@ Page MasterPageFile="~/Themes/Default/Main.Master" Async="true" Title="" Language="C#" AutoEventWireup="true"
    CodeBehind="VideoList.aspx.cs" Inherits="ProjectJKL.UI.Pages.Admin.Gallery.VideoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="onecolumn">
        <div class="header">
            <span><span class="ico color window"></span>Videos List</span>
        </div>
        <div class="Clear">
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="uibutton-toolbar btn-group">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl="~/UI/Pages/Admin/Gallery/VideoAdd.aspx">
                            <i class="icon-plus-sign"></i> Add Video
                    </asp:HyperLink>
                    <asp:DropDownList runat="server" AutoPostBack="true" ID="LanguagesDropDownList" />
                </div>
                <div class="content">
                    <asp:GridView ID="GridView1" CssClass="GridView" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        AllowSorting="True" DataSourceID="EntityDataSource1">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink runat="server" ClientIDMode="Static" ID="fancybox" NavigateUrl='<%#  OWDARO.BLL.GalleryBLL.VideosBL.GetVideoImageURL((int)Eval("VideoID")) %>'>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#  OWDARO.BLL.GalleryBLL.VideosBL.GetVideoImageThumbURL((int)Eval("VideoID")) %>' Width="100px" Height="100px"
                                            Style="margin: 5px;" />
                                    </asp:HyperLink>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                <ItemTemplate>
                                    <%# Eval("Title") %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                                <ItemTemplate>
                                    <%# Eval("Description") %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category" SortExpression="VideoCategoryID">
                                <ItemTemplate>
                                    <%# Eval("GY_VideoCategories.Title") %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Set" SortExpression="VideoSetID">
                                <ItemTemplate>
                                    <%# Eval("GY_VideoSet.Title") %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="btn-group" style="margin: 5px;">
                                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-mini" NavigateUrl='<%#String.Format("VideoManage.aspx?VideoID={0}", Eval("VideoID")) %>'>
                                            <i class="icon-cog"></i>Manage
                                        </asp:HyperLink>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="GridHeaderStyle" />
                        <PagerStyle CssClass="GridPagerStyle" />
                        <RowStyle CssClass="GridRowStyle" />
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=GalleryEntities" DefaultContainerName="GalleryEntities"
        EnableFlattening="False" EntitySetName="GY_Videos" Include="GY_VideoCategories, GY_VideoSet" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="LanguagesDropDownList" Name="Locale" PropertyName="SelectedValue" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>