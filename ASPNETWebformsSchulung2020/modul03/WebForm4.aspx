<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul03.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Range" min="0" Max="100"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Textmode="MultiLine" Rows="3"></asp:TextBox>
        </div>
    </form>
</body>
</html>
