<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryAjaxDemo.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul12.JqueryAjaxDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="ausgabe">
        </div>
        <input type="button" value="Zeit?" onclick="update();" />


    </form>
    <script src="../Scripts/jquery-3.5.1.js"></script>
    <script>
        function update() {
            $.ajax({
                type: "POST",
                url: "zeitservice"

            }).done(function (data) {
                $('#ausgabe').text(data);

            }).fail(function () {
                alert("error");
            });
        }
    </script>
</body>
</html>
