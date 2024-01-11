<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preview.aspx.cs" Inherits="ONEXSYS.preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 586px;
            width: 841px;
            margin-left: 305px;
            margin-top: 69px;
        }
        .auto-style3 {
            height: 57px;
            width: 450px;
            border-block:hidden;
            border-left:hidden;
            border-right:hidden;
        }
        .auto-style6 {
            width: 91%;
            height: 461px;
            margin-left: 48px;
        }
        .auto-style14 {
            width: 450px;
            height: 35px;
            border-block:hidden;
            border-left:hidden;
            border-right:hidden;
        }
        .auto-style16 {
            width: 48px;
            border-left:hidden;
            border-right:hidden;
        }
        .auto-style17 {
            width: 441px;
            align-items:center;
        }
        .auto-style18 {
            width: 581px;
            align-items:center;
            text-align:center;
        }
        .auto-style21 {
            width: 450px;
            align-items:center;
        }
        .auto-style22 {
            height: 57px;
            width: 61px;
            border-block:hidden;
            align-items:center;
            align-content:center;
            align-self:center;
            border-left-style: hidden;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: hidden;
            border-right-color: inherit;
            border-right-width: medium;
        }
        .auto-style24 {
            width: 199px;
            height: 177px;
        }
        .auto-style25 {
            width: 810px;
        }
        .auto-style26 {
            width: 61px;
            height: 35px;
            border-block:hidden;
            border-left-style: hidden;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: hidden;
            border-right-color: inherit;
            border-right-width: medium;
        }
        .auto-style27 {
            width: 450px;
            height: 179px;
            align-items:center;
            align-content:center;
            text-align:center
        }
        .auto-style29 {
            width: 581px;
            height: 179px;
            text-align:center;
        }
        .auto-style30 {
            width: 48px;
            height: 179px;
            align-items:center;
        }
        .auto-style31 {
            height: 57px;
            width: 581px;
            border-block: hidden;
            border-left:hidden;
            border-right:hidden;
        }
        .auto-style32 {
            width: 581px;
            height: 35px;
            border-block: hidden;
            border-left:hidden;
            border-right:hidden;
        }
        .auto-style33 {
            width: 61px;
            align-items: center;
            text-align:center;
        }
        .auto-style34 {
            width: 61px;
            height: 179px;
            align-items: center;
            text-align:center;
        }
        .auto-style35 {
            margin-left: 111px;
        }
        .auto-style36 {
            width: 361px;
        }
        .auto-style37 {
            width: 362px;
        }
        .auto-style38 {
            margin-left: 171px;
        }
        .auto-style39 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="height:687px; background-color:#373647" >
    <center><h1 style="color: #FFFFFF">PREVIEW the Q-Paper</h1></center>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table align="center" class="auto-style6" border="1" style="border-color: #FFFFFF">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="Testlist" runat="server" Height="63px" Width="238px" AutoPostBack="true" OnSelectedIndexChanged="Testlist_SelectedIndexChanged1" DataTextField="settype" DataValueField="settype" DataSourceID ="SqlDataSource1" CssClass="auto-style35">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [ques] ORDER BY [settype]"></asp:SqlDataSource>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style32"></td>
                </tr>
                            <tr>
                                <td class="auto-style21" style="color: #FFFFFF">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QID</td>
                                <td class="auto-style33" style="color: #FFFFFF">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QUESTION&nbsp;</td>
                                <td class="auto-style18" style="color: #FFFFFF">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHOICES&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                                <%
                                    while (dr.Read()) {
                                    %><%ans = Convert.ToString(dr.GetValue(7));%>
                                <%
                                    if (ans == CheckBox1.Text)
                                    {
                                        CheckBox1.Checked = true;
                                        CheckBox2.Checked = false;
                                        CheckBox3.Checked = false;
                                        CheckBox4.Checked = false;
                                    }
                                %>
                                 <%
                                     if (ans == CheckBox2.Text)
                                     {
                                         CheckBox1.Checked = false;
                                         CheckBox2.Checked = true;
                                         CheckBox3.Checked = false;
                                         CheckBox4.Checked = false;
                                     }
                                %>
                                 <%
                                     if (ans == CheckBox3.Text)
                                     {
                                         CheckBox1.Checked = false;
                                         CheckBox2.Checked = false;
                                         CheckBox3.Checked = true;
                                         CheckBox4.Checked = false;
                                     }
                                %>
                                 <%
                                             if (ans == CheckBox4.Text)
                                             {
                                                 CheckBox1.Checked = false;
                                                 CheckBox2.Checked = false;
                                                 CheckBox3.Checked = false;
                                                 CheckBox4.Checked = true;
                                             }
                                     %>
                               <tr>
                                <td class="auto-style27" style="color: #FFFFFF"><% =dr.GetValue(0) %></td>
                                <td class="auto-style34" style="color: #FFFFFF"><% =dr.GetValue(1) %></td>
                                <td class="auto-style29">
                                    <table class="auto-style24" style="color: #FFFFFF">
                                        <tr>
                                            <td class="auto-style17" style="color: #FFFFFF"></td>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </tr>
                                    <tr>
                                            <td class="auto-style17" style="color: #FFFFFF"><% =dr.GetValue(4) %></td>
                                             <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </tr>
                                         <tr>
                                            <td class="auto-style17" style="color: #FFFFFF"><% =dr.GetValue(5) %></td>
                                             <asp:CheckBox ID="CheckBox3" runat="server" />
                                        </tr>
                                         <tr style="color: #FFFFFF">
                                            <td class="auto-style17" style="color: #FFFFFF"><% =dr.GetValue(6) %></td>
                                              <asp:CheckBox ID="CheckBox4" runat="server" />
                                        </tr>
                                   </table>
                                   
                                </td>
                                <td class="auto-style30">
                                   <a href ="edit.aspx?settype=<%Response.Write(dr.GetValue(2)); %>&id=<%Response.Write(dr.GetValue(0)); %>"><b>EDIT<br />or<br />DELETE</b></a>
                                </td>
                            </tr><% } %>
                        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </table>
                      <table>  <tr>
                            <td class="auto-style25">
                                <table>
                                    <tr>
                                        <td class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="34px" Text="BACK" Width="140px" OnClick="Button2_Click" CssClass="auto-style39"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                        <td class="auto-style37"><asp:Button ID="Button1" runat="server" Height="48px" Text="Add Questions" Width="142px" OnClick="Button1_Click" CssClass="auto-style38"  /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </table>
        </div>
    </form>
</body>
</html>
