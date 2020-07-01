<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MasterDetail.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul09.MasterDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="accordion" id="accordionExample">
        <asp:Repeater ID="rptOrders" runat="server"
            ItemType="ASPNETWebformsSchulung2020.Modul09.Orders" SelectMethod="rptOrders_GetData">
            <ItemTemplate>
        
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" 
                                data-target="#collapse<%#Item.OrderID %>" >
                                       <%#Item.CustomerID %> <%#Item.OrderDate.Value.ToShortDateString() %> <span class="float-right"><%#Item.Order_Details.Count %></span>
     
                            </button>
                        </h2>
                    </div>

                    <div id="collapse<%#Item.OrderID %>" class="collapse " data-parent="#accordionExample">
                        <div class="card-body">
                            <ul>
                            <asp:Repeater ID="rptDetails" DataSource="<%#Item.Order_Details %>"
                                ItemType="ASPNETWebformsSchulung2020.Modul09.Order_Details"
                                runat="server">
                                <ItemTemplate>
                                    <li><%#Item.ProductID %>  <%#Item.Quantity %></li>
                                </ItemTemplate>

                            </asp:Repeater> 
                        </ul>
                        
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
