<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regist.aspx.cs" Inherits="ONEXSYS.regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION</title>

    <link href="Style.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.google.com/specimen/Crete+Round');
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <span> Go ANALYZE</span><br />
                    <img src="pics/col.jpg"/>
                     <a href="#" class="txt"><b><i>REGISTERED</i></b> already ! Then </a>
                    <br />
                     <a href="LOG_IN.aspx" class="log">Log In</a>
                </div>
                <div class="inner2">
                <h3>REGISTER HERE</h3>
                <asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="name" ErrorMessage="Please Enter Valid Name !"></asp:RequiredFieldValidator>
                <asp:TextBox ID="email" placeholder="E-mail" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="email" ErrorMessage="Please Enter Valid Email !"></asp:RequiredFieldValidator>
                <asp:TextBox ID="uid" placeholder="User_ID" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="uid" ErrorMessage="Please Enter Proper User_id !"></asp:RequiredFieldValidator>
                <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pass" ErrorMessage="Password must be 3 to 10 characters" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@#.\s]{3,10}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="pass" ErrorMessage="Please Enter Proper Password !"></asp:RequiredFieldValidator>
                <asp:TextBox ID="repass" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="repass" ControlToCompare="pass" ErrorMessage="Password doesn't match"></asp:CompareValidator>
                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn" Text="Submit" />

                    <asp:Label ID="Label1" Visible="false" runat="server"  ForeColor="Red" Text="You are successfully Registered !!"></asp:Label>
             </div>

            </div>

        </section>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
</body>
</html>
