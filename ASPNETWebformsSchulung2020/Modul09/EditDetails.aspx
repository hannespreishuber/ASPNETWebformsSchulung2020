<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul09.EditDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerID" 
          DefaultMode="Edit" ItemType="ASPNETWebformsSchulung2020.Modul09.Customers"
        SelectMethod="FormView1_GetItem"
        UpdateMethod="FormView1_UpdateItem"
            >
            <EditItemTemplate>
                CustomerID:
                <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Item.CustomerID %>' />
                <br />
                CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# BindItem.CompanyName %>' />
                <br />
                ContactName:
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# BindItem.ContactName %>' />
                <br />
                ContactTitle:
                <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# BindItem.ContactTitle %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# BindItem.Address %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# BindItem.City %>' />
                <br />
                Region:
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# BindItem.Region %>' />
                <br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# BindItem.PostalCode %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# BindItem.Country %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# BindItem.Phone %>' />
                <br />
                Fax:
                <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# BindItem.Fax %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
            </EditItemTemplate>
        </asp:FormView>
</asp:Content>
