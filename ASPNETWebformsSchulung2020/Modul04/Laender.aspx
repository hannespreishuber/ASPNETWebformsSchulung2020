<%@ Page Language="C#" AutoEventWireup="true"
    Async="true"
    CodeBehind="Laender.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul04.Laender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <table>
    <%foreach (var item in Liste)
        {%>
    <tr>
        <td><%=item.Name %></td>
         <td><%=item.Code3 %></td>
    </tr>

    <%  } %>
</table>
    </form>
</body>
</html>
