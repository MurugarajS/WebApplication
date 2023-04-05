<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 32%;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 578px;
        }
        .auto-style5 {
            width: 103px;
        }
        .auto-style6 {
            width: 103px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style10 {
            width: 247px;
        }
        .auto-style11 {
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <caption>
                    INSERTION</caption>
                <tr>
                    <td class="auto-style2">FIRSTNAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">LASTNAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">AGE</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Insert" Width="75px" Onclick="Submit_click" />
            </td>
            <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <caption>
                DELETION</caption>
            <tr>
                <td class="auto-style6">FIRSTNAME</td>
                <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="Delete" Width="75px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <caption>
                UPDATION</caption>
            <tr>
                <td class="auto-style11">ID</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">FIRSTNAME</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">LASTNAME</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">AGE</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" Text="UPDATE" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
