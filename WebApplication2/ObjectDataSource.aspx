﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectDataSource.aspx.cs" Inherits="WebApplication2.ObjectDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    </form>
</body>
</html>
