<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="daten2.aspx.cs" Inherits="ASPNETWebformsSchulung2020.Modul08.daten2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" SelectCommand="SELECT * FROM [Customers] ORDER BY [CustomerID]" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode, @Country, @Phone, @Fax)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [ContactTitle] = @ContactTitle, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Fax] = @Fax WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactTitle" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="ContactName" Type="String" />
                    <asp:Parameter Name="ContactTitle" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Eval("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Eval("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualisieren" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Abbrechen" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
                        </td>
                        <td> 

                            <div class="form-group row">
                                <label for="txtName" class="col-sm-2 col-form-label">Fam. Name</label>
                                <div class="col-sm-10">

                                    <asp:TextBox ID="txtName" runat="server" class="form-control"  Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                                </div>
                            </div>
                        </td>
                        <td>
                            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>Es wurden keine Daten zurückgegeben.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Einfügen" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Löschen" />
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Eval("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Eval("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">CustomerID</th>
                                        <th runat="server">CompanyName</th>
                                        <th runat="server">ContactName</th>
                                        <th runat="server">ContactTitle</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">City</th>
                                        <th runat="server">Region</th>
                                        <th runat="server">PostalCode</th>
                                        <th runat="server">Country</th>
                                        <th runat="server">Phone</th>
                                        <th runat="server">Fax</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Eval("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Eval("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
    </form>
</body>
</html>
