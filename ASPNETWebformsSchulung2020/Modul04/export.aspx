<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="export.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul04.export" %>

<table>
    <%foreach (var item in Liste)
        {%>
    <tr>
        <td><%=item %></td>
    </tr>

    <%  } %>
</table>
