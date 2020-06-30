<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eingabe1.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul06.Eingabe1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">

            <div class="form-group row">
                <label for="txtEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">

                    <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtName" class="col-sm-2 col-form-label">Fam. Name</label>
                <div class="col-sm-10">

                    <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <div class="col">

                    <div class="custom-control custom-checkbox">
                      
                        <asp:CheckBox ID="customCheck1" runat="server" 
                            ClientIDMode="Static" 
                            />
                        <label class="custom-control-label" for="customCheck1">Check </label>
                    </div>
                </div>
                <div class="col-sm-10">

                    <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-outline-primary"
                        OnClick="Button1_Click" />

                </div>
            </div>
        </div>
    </div>
      <script>
       $(function () {
        $('input:checkbox').addClass('custom-control-input');
       });
    </script>
</asp:Content>
