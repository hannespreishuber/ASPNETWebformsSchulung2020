<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BilderGallerie.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul16.BilderGallerie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <asp:Repeater ID="Repeater1" runat="server" ItemType="System.String"
         SelectMethod="Repeater1_GetData"
        >
        <ItemTemplate>
            <div class="col-md-4 col-12">
            <img src="bilder/<%# Item %>" class="img-fluid"/>

            </div>
        </ItemTemplate>

    </asp:Repeater>
</div>
</asp:Content>
