﻿<%@ Page MasterPageFile="~/Themes/Default/Main.Master" Async="true" Title="" Language="C#"
    AutoEventWireup="true" CodeBehind="PhotoList.aspx.cs" Inherits="ProjectJKL.UI.Pages.Admin.Gallery.PhotoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="onecolumn">
        <div class="header">
            <span><span class="ico color window"></span>Photo Gallery</span>
        </div>
        <div class="Clear">
        </div>
        <div class="uibutton-toolbar btn-group">
            <asp:HyperLink runat="server" ID="AlbumManageHyperLink" CssClass="btn btn-primary">
                <i class="icon-arrow-left"></i> Go Back To Album
            </asp:HyperLink>
            <asp:HyperLink runat="server" ID="PhotoAddHyperLink" CssClass="btn btn-success">
                <i class="icon-plus-sign"></i> Add Photo
            </asp:HyperLink>
            <asp:HyperLink runat="server" CssClass="btn" NavigateUrl="~/UI/Pages/Admin/Gallery/AlbumList.aspx">
                <i class="icon-list-ul"></i> List Albums
            </asp:HyperLink>
            <%--<asp:DropDownList runat="server" AutoPostBack="true" ID="LanguagesDropDownList" />--%>
        </div>
        <div class="content">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ClientIDMode="Static">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" CssClass="GridView" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" AllowSorting="True" DataSourceID="EntityDataSource1">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%# OWDARO.Util.Utilities.GetFancyBoxHTML((int?)Eval("ImageID"), string.Empty, false, "style='width:100px; height:100px; margin:5px;'") %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title">
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Taken On" SortExpression="TakenOn">
                                <ItemTemplate>
                                    <%#OWDARO.Util.DataParser.GetDateTimeFormattedString((DateTime?)Eval("TakenOn")) %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Added On" SortExpression="AddedOn">
                                <ItemTemplate>
                                    <%#OWDARO.Util.DataParser.GetDateTimeFormattedString((DateTime)Eval("AddedOn")) %>
                                </ItemTemplate>
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Hide" HeaderText="Hidden" ReadOnly="True" SortExpression="Hide">
                                <HeaderStyle CssClass="GridHeaderStyle" />
                                <ItemStyle CssClass="GridItemStyle" />
                                <ControlStyle CssClass="GridControlStyle" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="btn-group" style="margin: 5px;">
                                        <asp:HyperLink runat="server" CssClass="btn btn-mini" NavigateUrl='<%#String.Format("PhotoManage.aspx?PhotoId={0}", Eval("PhotoId")) %>'>
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=GalleryEntities"
        DefaultContainerName="GalleryEntities" EnableFlattening="False" EntitySetName="GY_Photos"
        Where="it.AlbumID==@AlbumID">
        <WhereParameters>
            <asp:QueryStringParameter DbType="Int32" Name="AlbumID" QueryStringField="AlbumID" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>