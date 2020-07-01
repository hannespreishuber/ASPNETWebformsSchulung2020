<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatenSuche.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.DatenSuche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group has-search">
        <span class="fa fa-search form-control-feedback"></span>
                
        <asp:TextBox ID="search" runat="server" class="form-control" placeholder="Search"></asp:TextBox>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        EnableCaching="true" CacheDuration="600"
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([CompanyName] LIKE '%' + @CompanyName + '%')">
        <SelectParameters>
         
            <asp:ControlParameter ControlID="search" Name="CompanyName" PropertyName="Text" Type="String" DefaultValue="%" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="list-group">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
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
