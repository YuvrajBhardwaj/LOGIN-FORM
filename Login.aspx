<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginFormASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table {
            margin: auto;
            border: 1px black ridge;
            width: 320px;
            align-self: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <table class="form-control">
                <tr>
                    <td colspan="2"><h1>Login Form</h1></td>
                </tr>
                <tr>
                    <td>USERNAME:</td>
                    <td class="form-control">
                        <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UserTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >PASSWORD:</td>
                    <td class="form-control">
                        <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PassTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
