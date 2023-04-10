<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sql.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        Select a country
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="CountriesSqlDataSource" 
            DataTextField="Country" DataValueField="Country">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CountriesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [Country] FROM [Customers]"></asp:SqlDataSource>
    </div>
    </form>
</body>



    


</html>
