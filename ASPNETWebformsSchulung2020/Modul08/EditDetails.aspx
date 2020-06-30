<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.EditDetails" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%=Request.GetFriendlyUrlSegments()[0] %></h1>
</asp:Content>
