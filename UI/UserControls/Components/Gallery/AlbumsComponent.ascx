﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AlbumsComponent.ascx.cs" Inherits="OWDARO.UI.UserControls.Components.Gallery.AlbumsComponent" %>

<h1 runat="server" id="TitleH1" class="PageTitle">
    <asp:Literal runat="server" ID="TitleLiteral"></asp:Literal>
</h1>
<asp:Literal runat="server" ID="AlbumsLiteral" />
<asp:Button runat="server" ID="LoadMoreButton" Text="Load More" OnClick="LoadMoreButton_Click" CssClass="LoadMoreButton" />
<asp:HiddenField runat="server" ID="CurrentCountHiddenField" Value="0" />