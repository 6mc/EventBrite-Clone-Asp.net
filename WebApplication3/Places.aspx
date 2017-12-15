<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Places.aspx.cs" Inherits="WebApplication3.Places" %>

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
            height: 193px;
            width: 1373px;
            margin-left: 0px;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
    </div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="71px" Width="1377px" style="margin-top: 0px">
            <span class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" style="color: #000000" NavigateUrl="~/Dashboard.aspx">BROWSE EVENTS</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Nevent.aspx" style="color: #000000">CREATE EVENT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Dashboard.aspx" style="color: #000000">PROFILE</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server" Height="100px" style="margin-left: 144px; margin-bottom: 0px" Width="525px">
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="208px" style="margin-left: 0px" Width="1235px">
            <div class="auto-style3">
                Available Places in
                <asp:TextBox ID="TextBox9" runat="server" placeholder="Denizli"></asp:TextBox>
                &nbsp; at
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Add a new Place" OnClick="Button3_Click" />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Height="500px" style="text-align: center; margin-left: 0px" Visible="False">
            <br />
            <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-size: xx-large" Text="*Please Fill All fields !" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="27px" ImageUrl="http://icons.iconarchive.com/icons/icons8/ios7/512/City-Park-Concert-Shell-icon.png" Width="32px" />
            <asp:TextBox ID="TextBox11" runat="server" placeholder="Place Name" style="text-align: center" Height="23px" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="http://pixsector.com/cache/2102b688/av952f32f4fc8384f9336.png" Width="38px" />
            <asp:TextBox ID="TextBox12" runat="server" Height="69px" placeholder="Place Address" style="text-align: center; margin-left: 0px;" TextMode="MultiLine" Width="186px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/48890-200.png" Width="41px" />
            <asp:TextBox ID="TextBox13" runat="server" Height="23px" placeholder="Capacity" style="text-align: center" TextMode="Number" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/209165-200.png" Width="41px" />
            <asp:TextBox ID="TextBox14" runat="server" Height="23px" placeholder="Owner" style="text-align: center" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image5" runat="server" Height="32px" ImageUrl="http://www.clker.com/cliparts/0/f/c/2/1195445181899094722molumen_phone_icon.svg.med.png" Width="41px" />
            <asp:TextBox ID="TextBox15" runat="server" Height="23px" placeholder="Owner Phone Number" style="text-align: center" TextMode="Phone" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Save Place" OnClick="Button4_Click" style="height: 26px" />
        </asp:Panel>
    </form>
</body>
</html>
