<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPaging.aspx.cs" Inherits="ASPNETWebformsSchulung2020.modul12.DisplayPaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <table id="ausgabe">
        </table>
        <input type="button" value="10 laden" onclick="update();" id="button1" />
    <script src="../Scripts/jquery-3.5.1.js"></script>
    <script>
        var page = 0;
        function update() {
            $.ajax({
                url: "paging",
                data: { page: page }

            }).done(function (data) {
                $('#ausgabe').append(data);
                page++;
               
              //$('body').scrollTo($('#button1').offset().top );

            }).fail(function () {
                alert("error");
            });
        }
    </script>
</body>
</html>
