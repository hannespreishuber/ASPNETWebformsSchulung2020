<%@ Control Language="C#" AutoEventWireup="true"   %>
<script runat="server">
    public string Farbe { get; set; }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text;
    }
</script>
<div style="background-color:<%=Farbe%>">
<asp:TextBox ID="TextBox1" runat="server">

</asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>