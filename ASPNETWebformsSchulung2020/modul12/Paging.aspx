<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paging.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul12.Paging" %>

        <asp:Repeater ID="Repeater1" runat="server" 
            SelectMethod="Repeater1_GetData"
            ItemType="ASPNETWebformsSchulung2020.Modul09.Customers">
            <ItemTemplate>
                <tr>
                    <td><%#Item.CustomerID %></td>
                    <td><%#Item.CompanyName %></td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>
