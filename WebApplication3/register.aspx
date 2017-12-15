<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication3.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            color: #666666;
        }
        
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
        .auto-style5 {
            font-size: xx-large;
        }
    </style>
</head>
<body background="wall.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF6600" Height="71px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:HyperLink ID="HyperLink1" runat="server" style="text-align: right; font-size: large; color: #FFFFFF" NavigateUrl="~/index.aspx">HOME</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #FFFFFF" NavigateUrl="~/login.aspx">LOG IN</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" style="text-align: right; font-size: large; color: #FFFFFF" NavigateUrl="~/register.aspx">SIGN UP</asp:HyperLink>
        </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC00" Height="917px" style="margin-left: 441px; margin-top: 110px" Width="470px">
            <div class="auto-style3" >
                <asp:Label ID="Label2" runat="server" style="font-size: xx-large; color: #FF0000" Text="*Please Fill All Fields" Visible="False"></asp:Label>
                <span class="auto-style5">
                <br />
                REGISTER</span><br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="https://www.fortunefiles.org/templates/images/name-icon.png" Width="48px" />
                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="268px" placeholder="Name" style="font-size: x-large"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image4" runat="server" Height="39px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Tags_font_awesome.svg/1000px-Tags_font_awesome.svg.png" Width="40px" />
                <asp:TextBox ID="TextBox3" runat="server" Height="39px" placeholder="Surname" style="font-size: x-large" Width="268px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image5" runat="server" Height="41px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" Width="48px" />
                <asp:TextBox ID="TextBox4" runat="server" Height="39px" placeholder="Username" style="font-size: x-large" Width="268px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="41px" ImageUrl="http://pluspng.com/img-png/png-lock-picture-lock-symbol-for-interface-free-icon-512.png" Width="48px" />
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" placeholder="***********" style="font-size: x-large" TextMode="Password" Width="268px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image6" runat="server" Height="41px" ImageUrl="http://pluspng.com/img-png/png-lock-picture-lock-symbol-for-interface-free-icon-512.png" Width="48px" />
                <asp:TextBox ID="TextBox5" runat="server" Height="39px" placeholder="***********" style="font-size: x-large" TextMode="Password" Width="268px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image7" runat="server" Height="41px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/63098-200.png" Width="48px" />
                <asp:TextBox ID="TextBox6" runat="server" Height="39px" placeholder="E-mail" style="font-size: x-large" TextMode="Email" Width="268px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="48px" style="color: #FFFFFF; font-size: xx-large; margin-left: 9px" Text="SIGN UP" Width="321px" OnClick="Button1_Click1" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <span class="auto-style4">
                <br />
                <br />
                Already a member ?</span>
                &nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/login.aspx" >Login</asp:HyperLink>
                <br />
                <br />
                <span class="auto-style4">&nbsp;Click
                <asp:HyperLink ID="HyperLink6" runat="server"  ForeColor="White" NavigateUrl="~/signup.aspx">Here</asp:HyperLink>
                &nbsp;to register as</span> <span class="auto-style4">organizer</span></div>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="75px">
        </asp:Panel>
    </form>
</body>
</html>
