<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DELP.aspx.cs" Inherits="ONEXSYS.DELP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 578px;
            width: 629px;
            margin-left: 431px;
        }
        .auto-style2 {
            width: 84%;
            height: 181px;
            margin-left: 29px;
        }
        .auto-style3 {
            height: 52px;
        }
        .auto-style4 {
            height: 55px;
        }
        .auto-style5 {
            margin-left: 244px;
        }
    </style>
</head>
<body style="background-color:darkslategrey">
    <form id="form1" runat="server">
        <div class="auto-style1" style="padding: 15px; border-width: 15px; border-style: double; border-color: #FFFFFF;">
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1 style="color: #FFFFFF"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DELETE THE Q-PAPER</h1>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style2" style="align-items:center">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="177px" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" BackColor="White" ForeColor="Black">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [ques] ORDER BY [settype]"></asp:SqlDataSource>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="dpaper" runat="server" Height="44px" Text="Delete Paper" Width="254px" OnClick="dpaper_Click" BackColor="#009999" BorderColor="White" ForeColor="Black" BorderStyle="Double" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Q-Paper Deleted" Visible="False"></asp:Label>
                        </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" BackColor="#009999" BorderColor="White" BorderStyle="Solid" CssClass="auto-style5" ForeColor="White" Height="41px" Text="BACK" Width="115px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
