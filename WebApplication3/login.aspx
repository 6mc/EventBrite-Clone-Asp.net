<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication3.login" %>

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
        .auto-style3 {
            text-align: center;
            font-size: large;
            height: 39px;
            margin-top: 32px;
            color: #FF3300;
        }
        .auto-style4 {
            color: #666666;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        </style>
</head>
<body background="wal.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="71px" Width="1377px" style="margin-top: 0px">
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
        <asp:Panel ID="Panel2" runat="server" BackColor="#F8F8F8" Height="548px" style="margin-left: 441px; margin-top: 110px" Width="470px">
            <div class="auto-style3" >
                <span class="auto-style5">
                <br />
                LOGIN</span><br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" Width="48px" />
                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="268px" placeholder="Username" style="font-size: x-large"></asp:TextBox>
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="41px" ImageUrl="http://pluspng.com/img-png/png-lock-picture-lock-symbol-for-interface-free-icon-512.png" Width="48px" />
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" placeholder="***********" style="font-size: x-large" TextMode="Password" Width="268px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="48px" style="color: #FFFFFF; font-size: xx-large; margin-left: 9px" Text="SIGN IN" Width="321px" OnClick="Button1_Click" />
                <br />
                <br />
                <span class="auto-style4">Don&#39;t have an account ?</span>
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Orange" NavigateUrl="~/register.aspx" >Sign Up</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Label"></asp:Label>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
