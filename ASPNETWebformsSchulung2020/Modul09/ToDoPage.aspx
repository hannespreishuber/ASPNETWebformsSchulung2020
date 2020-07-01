<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="ToDoPage.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul09.ToDoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Anzahl offen 
    <div class="input-group mb-3">
        Neue Aufgabe
        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

        <div class="input-group-append">

            <asp:Button ID="Button1" runat="server"
                class="btn btn-success" Text="Add" OnClick="Button1_Click" />
        </div>
    </div>
    <div class="list-group">
        <asp:ListView ID="TodoListView" runat="server" 
            ItemType="ASPNETWebformsSchulung2020.Modul09.MyToDos"
            SelectMethod="TodoListView_GetData"
            OnItemCommand="TodoListView_ItemCommand" DataKeyNames="Id" >
            
            <ItemTemplate>
                <div class="list-group-item  ">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Item.Erledigt%>'
                        ClientIDMode="Static" />
                    <%#Item.Datum.Value.ToShortDateString()%>

                    <%#Item.Bezeichnung %>
                    <asp:LinkButton ID="HyperLink1" runat="server" 
                        CommandName="del" CommandArgument='<%#Item.Id %>' >
                    <span class="float-right">   <i class="fa fa-trash" aria-hidden="true"></i></span>
                    </asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:ListView>

    </div>
    <asp:Button ID="Button2" runat="server" Text="speichern" class="btn btn-primary" OnClick="Button2_Click"/>

</asp:Content>
