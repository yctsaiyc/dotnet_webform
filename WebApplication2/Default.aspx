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
        .auto-style5 {
            width: 163px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
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
                    <asp:RequiredFieldValidator ID="LastNameValidation" runat="server" ErrorMessage="Please enter a last name" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Birthday</td>
                <td class="auto-style6">
                    <asp:TextBox ID="BirthdayTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="BirthdayValidation" runat="server" ErrorMessage="Please enter a birthday" ControlToValidate="BirthdayTextBox">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="Please enter a valid birthday" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailValidation" runat="server" ErrorMessage="Please enter a last name" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a vaild email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
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
                    <asp:RequiredFieldValidator ID="CityValidation" runat="server" ErrorMessage="Please select a city" ControlToValidate="CityDropDown">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
