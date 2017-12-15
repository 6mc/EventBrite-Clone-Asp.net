<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Oprofile.aspx.cs" Inherits="WebApplication3.Oprofile" %>

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
        .auto-style5 {
            font-size: xx-large;
        }
    </style>
</head>
<body background="vertical.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="71px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" style="color: #000000">BROWSE EVENTS</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server">CREATE EVENT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server">PROFILE</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" BackColor="#3B3B3B" Height="1289px" style="margin-left: 441px; margin-top: 110px" Width="470px">
            <div class="auto-style3" >
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <span class="auto-style5">
                <br />
                PROFILE<br />
                <asp:Image ID="Image9" runat="server" Height="131px" ImageUrl="http://job.pharmaglobiz.com/images/default-logo.png" Width="151px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                </span><br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/621754-200.png" Width="48px" />
                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="268px" placeholder="Company Name" style="font-size: x-large"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image4" runat="server" Height="39px" ImageUrl="http://www.clker.com/cliparts/0/f/c/2/1195445181899094722molumen_phone_icon.svg.med.png" Width="40px" />
                <asp:TextBox ID="TextBox3" runat="server" Height="39px" placeholder="Phone Number" style="font-size: x-large" Width="268px"></asp:TextBox>
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
                <asp:Image ID="Image6" runat="server" Height="60px" ImageUrl="http://pixsector.com/cache/2102b688/av952f32f4fc8384f9336.png" Width="59px" style="margin-left: 0px" />
                <asp:TextBox ID="TextBox5" runat="server" Height="81px" placeholder="Address" style="font-size: medium; margin-left: 11px;" Width="278px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image10" runat="server" Height="44px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/98061-200.png" style="margin-left: 0px" Width="47px" />
                <asp:TextBox ID="TextBox8" runat="server" Height="81px" placeholder="Information about your company" style="font-size: medium; margin-left: 11px;" Width="278px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image7" runat="server" Height="41px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/63098-200.png" Width="48px" />
                <asp:TextBox ID="TextBox6" runat="server" Height="39px" placeholder="E-mail" style="font-size: x-large" TextMode="Email" Width="268px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="48px" style="color: #FFFFFF; font-size: xx-large; margin-left: 9px" Text="SAVE" Width="321px" OnClick="Button1_Click" />
                <br />
                <br />
                </div>
        </asp:Panel>
    </form>
</body>
</html>
