<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToDoPage.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.ToDoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Anzahl offen <%=liste.Where(x=>x.Erledigt==false).Count() %>
    <div class="input-group mb-3">
        Neue Aufgabe
        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

        <div class="input-group-append">

            <asp:Button ID="Button1" runat="server"
                class="btn btn-success" Text="Add" OnClick="Button1_Click" />
        </div>
    </div>
    <div class="list-group">
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="list-group-item  ">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("erledigt" )%>' />
                    <%#Eval("Datum","{0:d}") %>

                    <%#Eval("Bezeichnung") %>
                    <asp:LinkButton ID="HyperLink1" runat="server" 
                        CommandName="del" CommandArgument='<%#Eval("Id") %>' >
                    <span class="float-right">   <i class="fa fa-trash" aria-hidden="true"></i></span>
                    </asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
    <asp:Button ID="Button2" runat="server" Text="speichern" class="btn btn-primary" OnClick="Button2_Click"/>

</asp:Content>
