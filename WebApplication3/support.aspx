<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="support.aspx.cs" Inherits="WebApplication3.support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            font-size: x-large;
            color: #FF0066;
        }
        </style>
</head>
<body background="support.jpeg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="71px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:HyperLink ID="HyperLink1" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/index.aspx">HOME</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG IN</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/register.aspx">SIGN UP</asp:HyperLink>
        </asp:Panel>
    
    </div>
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="422px" style="margin-left: 430px; margin-top: 171px;" BackColor="#F8F8F8" Width="599px">
            &nbsp;<br />
            <asp:Label ID="Label1" runat="server" style="color: #000000" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Placeholder="Subject" style="font-size: x-large; margin-left: 39px; margin-top: 66px;" Width="208px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="143px" Placeholder="Message" style="margin-left: 38px; font-size: x-large;" Width="486px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Height="39px" Text="SEND" Width="162px" style="margin-left: 38px" OnClick="Button1_Click" />
        </asp:Panel>
    </form>
</body>
</html>
