<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SETP.aspx.cs" Inherits="ONEXSYS.SETP" %>

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
        .auto-style7 {
            width: 820px;
            height: 42px;
        }
        .auto-style8 {
            height: 42px;
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
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="testlist" runat="server" Height="24px" Width="229px" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="settype" DataValueField="settype">
                       <%-- <asp:ListItem></asp:ListItem>
                        <asp:ListItem>DBMS</asp:ListItem>
                        <asp:ListItem>C LANGUAGE</asp:ListItem>
                        <asp:ListItem>PYTHON</asp:ListItem>
                        <asp:ListItem>HTML</asp:ListItem>--%>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="testname" runat="server" Height="33px" Width="195px" Visible="false"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Ntest" runat="server" BorderColor="#000066" Height="38px" Text="NEW TEST" Width="154px" OnClick="Ntest_Click1" />
                    </td>
                    <td>&nbsp;&nbsp;<asp:Label ID="msg1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ques]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="quest" runat="server" Height="74px" Width="589px"></asp:TextBox>
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
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
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" ></asp:Label>
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
                        <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
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
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
&nbsp;
                        <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
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
                        <asp:Label ID="Label7" runat="server" ForeColor="Red" ></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Visible="false" Text="Question added successfully "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Submit" runat="server" BorderColor="#000066" Height="38px" Text="ADD" Width="154px" OnClick="Submit_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Back" runat="server" BorderColor="#000066" Height="38px" Text="BACK" Width="154px"  OnClick="Back_Click1"/>
&nbsp;&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
