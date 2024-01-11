<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="ONEXSYS.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 680px;
            width: 1159px;
            margin-left: 175px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 317px;
        }
        .auto-style4 {
            width: 403px;
        }
        .auto-style5 {
            width: 317px;
        }
        .auto-style6 {
            width: 220px;
        }
        .auto-style7 {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="border-color: #000000; background-color: #006666">
            <br />
            <br />
            <h1><u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER'S REPORT</u></h1>
            <br />
            <br />
            <br />
            <table class="auto-style2" style="border:medium double #FFFFCC">
                <tr>
                    <td class="auto-style3" style="background-color: #FFFFFF; text-align: center;">USER NAME</td>
                    <td class="auto-style6" style="background-color: #FFFFFF; text-align: center;">DATE</td>
                    <td class="auto-style5" style="background-color: #FFFFFF; text-align: center;">TEST NAME</td>
                    <td class="auto-style7" style="background-color: #FFFFFF; text-align: center;">MARKS</td>
                    <td  class="auto-style7" style="background-color: #FFFFFF; text-align: center;">TOTAL MARKS</td>
                </tr>
                <% 
                    while (dr.Read())
                    { 
                        %>
                <tr>
                    <td class="auto-style3" style="text-align: center"><% =dr.GetValue(0) %></td>
                    <td class="auto-style6" style="text-align: center"><% =dr.GetValue(1) %></td>
                    <td class="auto-style5" style="text-align: center"><% =dr.GetValue(2) %></td>
                    <td class="auto-style7" style="text-align: center"><% =dr.GetValue(3) %></td>
                    <td class="auto-style4" style="text-align: center"><% =dr.GetValue(4) %></td>
                </tr>
                <% }
                    con.Close();
                    %>
            </table>
        </div>
    </form>
</body>
</html>
