<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication3.Profile" %>

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
<body background="ada.jpg">
    <form id="form1" runat="server">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="71px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" style="color: #000000" NavigateUrl="~/Dashboard.aspx">BROWSE EVENTS</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server">PROFILE</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" BackColor="#3B3B3B" Height="1273px" style="margin-left: 441px; margin-top: 110px" Width="470px">
            <div class="auto-style3" >
                <asp:Label ID="Label1" runat="server" style="font-size: xx-large; color: #FFFFFF" Text="*Profile Successfully Updated !" Visible="False"></asp:Label>
                <span class="auto-style5">
                <br />
                PROFILE<br /> </span>
                <asp:Image ID="Image8" runat="server" Height="131px" ImageUrl="https://www.drupal.org/files/issues/default-avatar.png" Width="151px" />
                <br />
                <asp:FileUpload ID="FileUpload1" placeholder="upload profile picture" runat="server" style="margin-left: 52px" />
                <br />
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
                <asp:Image ID="Image10" runat="server" Height="41px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/62562-200.png" Width="45px" />
                <asp:TextBox ID="TextBox7" runat="server" Height="39px" placeholder="Surname" style="font-size: x-large; color: #666666;" TextMode="Date" Width="268px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Image ID="Image9" runat="server" Height="39px" ImageUrl="https://camo.githubusercontent.com/77189da1b5855fadf42ab441b7f5b27e70894e6e/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f7468756d622f612f61662f47656e6465725f73796d626f6c735f736964655f62795f736964655f736f6c69642e7376672f32353070782d47656e6465725f73796d626f6c735f736964655f62795f736964655f736f6c69642e7376672e706e67" style="margin-left: 0px" Width="78px" />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="65px" style="font-size: x-large; color: #666666" Width="204px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
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
                <asp:Image ID="Image6" runat="server" Height="33px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/98061-200.png" Width="44px" />
                <asp:TextBox ID="TextBox5" runat="server" Height="182px" placeholder="Biography" style="font-size: x-large" TextMode="MultiLine" Width="278px"></asp:TextBox>
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
