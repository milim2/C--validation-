<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registraton.aspx.cs" Inherits="ValidationforRegistration1.Registraton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 58%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 222px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registration<br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbname" ErrorMessage="Error!!!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbpass" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbpass" ErrorMessage="Error!!!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Rerype Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbRepass" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbRepass" ErrorMessage="Error!!!"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpass" ControlToValidate="tbRepass" ErrorMessage="password must match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbemail" ErrorMessage="Error!!!"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Full Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbfullname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbfullname" ErrorMessage="Error!!!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Country</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlcountry" runat="server">
                            <asp:ListItem Selected="True">Select One</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>South Korea</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlcountry" ErrorMessage="Error!!!" InitialValue="Select One"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Button" />
        <br />
        <br />
        <input id="Reset1" type="reset" value="Start Over" /><br />
    </form>
</body>
</html>
