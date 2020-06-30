<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatenSuche.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.DatenSuche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>

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
