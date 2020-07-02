<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatPage.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul15.ChatPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="user" />
            <input id="msg" />
            <input type="button" value="send"  onclick="send()"/>
            <ul id="chatmsg">

            </ul>
        </div>
    </form>
    <script src="../Scripts/jquery-3.5.1.js"></script>
    <script src="../Scripts/jquery.signalR-2.4.1.js"></script>
    <script src="../signalr/hubs"></script>

    <script>
        var chat = $.connection.ppedvHub;
        $.connection.hub.start().done(function () {
            $('ul').append("<li>connected..</li>");
        });

        chat.client.neueMsg = function (data, user) {
            $('ul').append("<li>" +user +":"+data+"</li>");
        }

        function send() {
            console.log($('#msg').val());
            chat.server.sendMsg($('#msg').val(), $('#user').val());
        }

    </script>
</body>
</html>
