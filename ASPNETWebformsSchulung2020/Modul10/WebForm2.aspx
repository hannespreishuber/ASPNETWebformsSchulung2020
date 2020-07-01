<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul10.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            
                ControlToValidate="TextBox1"
                ErrorMessage="da kommt was rein"></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2"
                   
                ErrorMessage="da kommt was rein"></asp:RequiredFieldValidator>
            <br />
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            
                ControlToValidate="TextBox4"
                ErrorMessage="da kommt was rein">*</asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
               ControlToValidate="TextBox4"
                ErrorMessage="keine email adresse" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox3"
                   Display="Dynamic"
                   
                ErrorMessage="da kommt was rein">*</asp:RequiredFieldValidator>sdfsdf

            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" />
        </div>
    </form>
</body>
</html>
