<%@ Page Language="VB" MasterPageFile="~/ppcompany1.master" Title="Passwortverwaltung" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Headline" runat="server">
    <h1 style="margin-top:10px; line-height:45px; color:white">Optionen</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:30px; margin-right:30px">
        <h3>
            <strong>Passwort verwalten</strong>
        </h3>
    
    <br />
        <div class="row clearfix">
		    <div class="col-md-6 column ui-sortable">
                <div class="jumbotron" contenteditable="false">
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                    </asp:PasswordRecovery>
                </div> 
		    </div>
            <div class="col-md-6 column ui-sortable">
                <div class="jumbotron" contenteditable="false">
                    <asp:ChangePassword ID="ChangePassword1" runat="server">
                    </asp:ChangePassword>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

