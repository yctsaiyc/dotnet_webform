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
                    <asp:RequiredFieldValidator ID="FirstNameValidation" runat="server" ErrorMessage="Please enter a first name" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameValidation0" runat="server" ErrorMessage="Please enter a last name" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Birthday</td>
                <td>
                    <asp:TextBox ID="BirthdayTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameValidation1" runat="server" ErrorMessage="Please enter a birthday" ControlToValidate="BirthdayTextBox">*</asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="FirstNameValidation2" runat="server" ErrorMessage="Please select a city" ControlToValidate="CityDropDown">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="CustomersGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
