<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul03.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="true">
                <asp:ListItem Value="Herr" Text="Mann"></asp:ListItem>
                <asp:ListItem Value="Frau" Text="Frau" Selected="true"></asp:ListItem>
                <asp:ListItem Value="Es" Text="Divers"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
