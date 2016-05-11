﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VideoSetComponent.ascx.cs" Inherits="OWDARO.UI.UserControls.Components.Gallery.VideoSetComponent" %>

<h1 runat="server" id="TitleH1" class="PageTitle">
    <asp:Literal runat="server" ID="TitleLiteral"></asp:Literal>
</h1>
<asp:Literal runat="server" ID="VideosLiteral" />
<asp:Button runat="server" ID="LoadMoreButton" OnClick="LoadMoreButton_Click" CssClass="LoadMoreButton" />
<asp:HiddenField runat="server" ID="CurrentCountHiddenField" Value="0" />