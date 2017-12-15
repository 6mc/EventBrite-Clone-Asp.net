<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication3.Dashboard" %>

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
        .auto-style7 {
            color: #3399FF;
        }
        .auto-style10 {
            color: #666666;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style12 {
            color: #FF0066;
        }
        .auto-style13 {
            color: #666666;
            font-size: large;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-size: large;
            text-align: center;
        }
        #form1 {
            height: 1160px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="58px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" style="color: #000000" NavigateUrl="~/Dashboard.aspx">BROWSE EVENTS</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Nevent.aspx" style="color: #000000">CREATE EVENT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/OrgProfile.aspx" style="color: #000000">PROFILE</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink10" runat="server">CONTACT SUPPORT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server" Height="154px" BackColor="White" style="margin-left: 199px; text-align: center; margin-top: 191px;" Width="988px">
            <br />
            <span class="auto-style3">&nbsp;FIND YOUR NEXT EXPERIENCE</span><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Placeholder="Search Events" Height="33px" style="margin-top: 37px; font-size: x-large;" Width="207px"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" Height="33px"  style="margin-top: 37px; font-size: x-large; color: #666666; text-align: center;" Width="207px">Denizli</asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Height="33px" style="margin-top: 37px; font-size: x-large; color: #666666;" Width="207px" TextMode="Date"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="37px" style="color: #FFFFFF; font-size: x-large" Text="SEARCH" Width="149px" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
        <span class="auto-style7">
                <span class="auto-style4"> 
                <asp:Panel ID="Panel8" runat="server" BackColor="White" BorderColor="#333333" BorderStyle="Solid" Height="374px" style="text-align: center; margin-left: 369px; margin-top: 4px" Width="722px">
                    <asp:Image ID="Image2" runat="server" Height="149px" ImageUrl="http://blog.boomzap.com/wp-content/uploads/2017/09/badges_nominee_800x444-800x444.jpg" style="margin-left: 2px; margin-top: 23px" Width="365px" />
                    <br />
                    <span></span> <span class="auto-style15"><span class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="SAT, DEC 24 10:00 PM"></asp:Label>
                    <br />
                    </span>
                    <br />
                    </span><span class="auto-style4"><span class="auto-style7"><span class="auto-style8"><span class="auto-style12">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text="INTERNATIONAL MOBILE GAMING AWARDS"></asp:Label>
                    </span> </span>
                    <span><span class="auto-style15">
                    <br />
                    <br />
                    </span></span><span class="auto-style14"><span class="auto-style10">&nbsp;<asp:Label ID="Label4" runat="server" Text="TAIPEI MODERN ARTS CENTER, TAIWAN"></asp:Label>
                    <br />
                    </span>
                    <br class="auto-style10" />
                    </span><span><span class="auto-style13">&nbsp;<asp:Label ID="Label5" runat="server" Text="#TECH #GAMING"></asp:Label>
                    &nbsp;<br /> </span>
                    <asp:TextBox ID="TextBox8" runat="server" Height="21px" TextMode="Number" Width="44px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="194px">
                    </asp:DropDownList>
                    </span>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buy" />
                    </span>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reserve" />
                    </span></asp:Panel>
                </span>
    </form>
</body>
</html>
