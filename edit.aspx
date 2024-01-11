<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="ONEXSYS.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            height: 100%;
        }
        .auto-style2 {
            width: 820px;
        }
        .auto-style3 {
            width: 820px;
            height: 17px;
        }
        .auto-style4 {
            height: 17px;
        }
        .auto-style5 {
            width: 820px;
            height: 18px;
        }
        .auto-style6 {
            height: 18px;
        }
        .auto-style13 {
            height: 534px;
        }
        .auto-style14 {
            width: 820px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            width: 820px;
            height: 15px;
        }
        .auto-style17 {
            height: 15px;
        }
    </style>
</head>
<body style="width: 1407px; height: 646px; margin-left: 361px; margin-top: 125px; background-color:#373647">
    <form id="form1" runat="server">
       
        <div class="auto-style13" style="margin-top: 113px;">
             <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDIT THE Q-PAPER </h1> 
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="quest" runat="server" Height="74px" Width="589px"></asp:TextBox>
                    </td>
                    <td>&nbsp;
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="opt1" runat="server" Height="27px" Width="589px"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp; &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="opt" Checked="true" />
&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="opt2" runat="server" Height="27px" Width="589px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
                        &nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="opt3" runat="server" Height="27px" Width="589px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;&nbsp; &nbsp;
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt"/>
&nbsp;
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="opt4" runat="server" Height="27px" Width="589px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;&nbsp; &nbsp;
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
&nbsp;
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Update" runat="server" BorderColor="#000066" Height="38px" Text="UPDATE" Width="154px" OnClick="Update_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Del" runat="server" BorderColor="#000066" Height="38px" Text="DELETE" Width="154px"  OnClick="Del_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Back" runat="server" BorderColor="#000066" Height="38px" Text="BACK" Width="154px"  OnClick="Back_Click"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

