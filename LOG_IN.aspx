<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG_IN.aspx.cs" Inherits="ONEXSYS.LOG_IN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
        }
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            height: 411px;
            margin-top: 113px;
        }
    </style>
</head>
<body style="height: 653px; width: 573px; margin-left: 437px">
    <form id="form1" runat="server">
        <div style="border-color: #000000; border-style: double; padding: 5px; color: #FFFFFF; font-weight: bold; background-color: #000000;" class="auto-style3">
            <br />
            &nbsp; <center> <font size : large>LOGIN HERE</font></center><br />
            <br />
            <br />
            <table class="auto-style1" style="padding: 10px; margin: 5px; background-color: #008080;">
                <tr>
                    <td class="auto-style2">USER ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="ddl1" runat="server" AutoPostBack="true" DataTextField="admin" DataValueField="admin">
                       <asp:ListItem></asp:ListItem>
                        <asp:ListItem>admin</asp:ListItem>
                        <asp:ListItem>user</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" BackColor="White" BorderColor="Black" Font-Bold="True" ForeColor="#00CC00" Height="34px" Width="99px" />
                    </td>
                    <td>&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="HOME" OnClick="Button2_Click" BackColor="White" BorderColor="Black" Font-Bold="True" ForeColor="#00CC00" Height="32px" Width="108px" />
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
