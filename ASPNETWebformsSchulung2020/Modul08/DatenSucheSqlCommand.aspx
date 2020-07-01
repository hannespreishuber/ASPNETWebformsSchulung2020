<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatenSucheSqlCommand.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.DatenSucheSqlCommand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="form-group has-search">
        <span class="fa fa-search form-control-feedback"></span>
                
        <asp:TextBox ID="search" runat="server" class="form-control" placeholder="Search"></asp:TextBox>
    </div>
     <div class="list-group">
        <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>
                <a class="list-group-item list-group-item-action list-group-item-light"
                    href="<%#"editdetails/"+Eval("Customerid") %>">
                    <h2 class="black"><%#Eval("CompanyName") %></h2>
                    <p>
                        <%#Eval("ContactName") %>
                    </p>
                </a>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
