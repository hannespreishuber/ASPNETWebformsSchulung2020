﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionDemo.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul05.SessionDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h3>Aufgabe erfassen</h3>
            <asp:TextBox ID="task" runat="server">
            </asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClick="Button1_Click" />
            <hr />
            <ul>
                <%foreach (var item in ToDoItems)
                    {%>
                <li><%=item %></li>
                <%} %>
            </ul>
        </div>
    </form>
</body>
</html>
