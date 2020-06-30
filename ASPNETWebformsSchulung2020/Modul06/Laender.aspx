<%@ Page Language="C#" AutoEventWireup="true"
    Async="true"
    CodeBehind="Laender.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul06.Laender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
                <form id="form1" runat="server">
                    <table class="table table-striped">
                        <%foreach (var item in Liste)
                            {%>
                        <tr>
                            <td><%=item.Name %></td>
                            <td><%=item.Code3 %></td>
                        </tr>

                        <%  } %>
                    </table>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col">
                 <ul class="list-group">
                        <%foreach (var item in Liste)
                            {%>
                        <li class="list-group-item ">
                            <%=item.Name %>
                            <span class="badge badge-primary float-right  "><%=item.Code3 %></span>
                        </li>

                        <%  } %>
                    </ul>
            </div>
        </div>
    </div>
</body>
</html>
