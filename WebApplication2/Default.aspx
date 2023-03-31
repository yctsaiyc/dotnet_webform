<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            height: 28px;
            width: 163px;
        }
        .auto-style4 {
            width: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">City</td>
                <td>
                    <asp:DropDownList ID="CityDropDown" runat="server">
                        <asp:ListItem Value="" Text="SelectOne" />
                        <asp:ListItem>Taipei</asp:ListItem>
                        <asp:ListItem>New Taipei</asp:ListItem>
                        <asp:ListItem>Taoyuan</asp:ListItem>
                        <asp:ListItem>Taichung</asp:ListItem>
                        <asp:ListItem>Tainan</asp:ListItem>
                        <asp:ListItem>Kaohsiung</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
                    <br />
                    <br />
                    <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
