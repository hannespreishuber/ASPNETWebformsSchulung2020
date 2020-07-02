<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageCaching.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul14.PageCaching" %>
<%@ OutputCache Duration="10" VaryByParam="page" %>
<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Page             <%=DateTime.Now %>
            
            <hr />
        </div><uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
        <hr />
        <asp:Substitution ID="Substitution1" runat="server" MethodName="refreshme" />
    </form>
</body>
</html>
