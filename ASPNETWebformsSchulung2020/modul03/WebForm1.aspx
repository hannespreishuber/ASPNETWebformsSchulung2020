<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
          
                <asp:TextBox ID="TextBox1" runat="server" onkeyup="updateui()" Class="hannes"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"  />
            </asp:Panel>
               <asp:Panel ID="Panel2" runat="server" Visible="false">
                <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Predictable"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click"  />
            </asp:Panel>
        </div>
    </form>
    <script>
        function updateui() {
            console.log(document.getElementById("<%=TextBox1.ClientID%>").value);
            document.getElementById("TextBox2").style.backgroundColor = document.getElementById("TextBox1").value;
    
        }
    </script>
</body>
</html>
