<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication3.index" %>

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
            font-size: x-large;
            color: #FF3300;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            height: 55px;
            width: 1347px;
        }
        .auto-style6 {
            color: #666666;
            text-align: left;
        }
        .auto-style7 {
            color: #3399FF;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            color: #666666;
        }
        .auto-style11 {
            color: #666666;
            font-size: small;
        }
        .auto-style12 {
            color: #FF0066;
        }
    </style>
</head>
<body background="wal.jpg" style="height: 165px; width: 1366px">
    <form id="form1" runat="server">
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
        <asp:Panel ID="Panel2" runat="server" Height="162px" BackColor="Transparent" style="margin-left: 420px" Width="671px">
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="154px" BackColor="White" style="margin-left: 199px; text-align: center;" Width="988px">
            <br />
            <span class="auto-style3">&nbsp;FIND YOUR NEXT EXPERIENCE</span><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Placeholder="Search Events" Height="33px" style="margin-top: 37px; font-size: x-large;" Width="207px"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" Height="33px"  style="margin-top: 37px; font-size: x-large; color: #666666; text-align: center;" Width="207px">Denizli, Turkey</asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Height="33px" style="margin-top: 37px; font-size: x-large; color: #666666;" Width="207px" TextMode="Date"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="37px" style="color: #FFFFFF; font-size: x-large" Text="SEARCH" Width="149px" OnClick="Button1_Click" />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="126px">
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" BackColor="#F8F8FA" Height="662px">
            <div class="auto-style5">
                <br />
                <span class="auto-style4"><span class="auto-style6">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Popular Events in</span> <span class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Denizli , Turkey"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" style="color: #FF0000" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Panel ID="Panel8" runat="server" BackColor="White" BorderColor="#333333" BorderStyle="Solid" Height="374px" style="text-align: center; margin-left: 369px; margin-top: 4px" Width="722px">
                    <asp:Image ID="Image2" runat="server" Height="149px" ImageUrl="http://blog.boomzap.com/wp-content/uploads/2017/09/badges_nominee_800x444-800x444.jpg" style="margin-left: 2px; margin-top: 23px" Width="365px" />
                    <br />
                    <span class="auto-style10">SAT, DEC 24 10:00 PM</span><br /> <span class="auto-style8"><span class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="INTERNATIONAL MOBILE GAMING AWARDS"></asp:Label>
                    </span><span class="auto-style7"><br />
                    <br />
                    </span></span><span class="auto-style7"><span class="auto-style9"><span class="auto-style10">TAIPEI MODERN ARTS CENTER, TAIWAN<br /> </span>
                    <br class="auto-style10" />
                    </span><span><span class="auto-style11">#TECH&nbsp; #GAMING</span></span></span></asp:Panel>
                </span></span></div>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" BackColor="#F8F8FA" Height="434px" style="margin-left: 0px">
        </asp:Panel>
    </form>
</body>
</html>
