<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToDoPage.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.ToDoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="input-group mb-3">
        Neue Aufgabe
        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

        <div class="input-group-append">

            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Add" OnClick="Button1_Click"/>
        </div>
    </div>
    <div class="list-group">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="list-group-item  ">
                    <%#Eval("Datum","{0:d}") %>

                    <%#Eval("Bezeichnung") %>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
