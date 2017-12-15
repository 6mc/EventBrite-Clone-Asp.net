<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nevent.aspx.cs" Inherits="WebApplication3.Nevent" %>

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
        
        .auto-style4 {
            font-size: xx-large;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp; EVENTFUL </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" style="color: #000000" NavigateUrl="~/Dashboard.aspx">BROWSE EVENTS</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Places.aspx" style="color: #000000">FIND PLACES</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server">CREATE EVENT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server">PROFILE</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-align: right; font-size: large; color: #000000" NavigateUrl="~/login.aspx">LOG OUT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink10" runat="server">CONTACT SUPPORT</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server" Height="100px" style="margin-left: 144px; margin-bottom: 0px" Width="525px">
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="208px" style="margin-left: 0px" Width="1235px">
            <div class="auto-style3">
                Please Click Button to Create New Event<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Create a New Event" OnClick="Button3_Click" />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Height="802px" style="text-align: center; margin-left: 0px" Visible="False">
            <asp:Image ID="Image6" runat="server" Height="97px" ImageUrl="http://www.85percent.co.uk/wp-content/uploads/2015/08/default-placeholder-1024x1024-570x321.png" Width="189px" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="33px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/6358-200.png" Width="28px" />
            <asp:TextBox ID="TextBox11" runat="server" placeholder="Event Name" style="text-align: center" Height="21px" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="http://pixsector.com/cache/2102b688/av952f32f4fc8384f9336.png" Width="38px" />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="233px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/204627-200.png" Width="41px" />
            <asp:TextBox ID="TextBox13" runat="server" Height="23px" placeholder="Capacity" style="text-align: center" TextMode="Date" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Image ID="Image11" runat="server" Height="39px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/7383-200.png" Width="41px" />
            <asp:TextBox ID="TextBox20" runat="server" Height="23px" placeholder="Capacity" style="text-align: center" TextMode="Time" Width="150px"></asp:TextBox>
            <br />
            <br />
            <br />
            <span class="auto-style4"><strong>#&nbsp; </strong></span>
            <asp:TextBox ID="TextBox14" runat="server" Height="60px" placeholder="Hashtags" style="text-align: center" Width="149px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Image ID="Image10" runat="server" Height="33px" ImageUrl="https://d30y9cdsu7xlg0.cloudfront.net/png/98061-200.png" style="margin-left: 0px" Width="39px" />
            <asp:TextBox ID="TextBox8" runat="server" Height="75px" placeholder="Information about your Event" style="font-size: medium; margin-left: 11px;" TextMode="MultiLine" Width="177px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="Add Ticket" OnClick="Button6_Click" />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox17" Placeholder="Ticket Name" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox18" Placeholder="Price"  runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox19" Placeholder="Quantity"   runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Save Event" OnClick="Button4_Click" />
        </asp:Panel>
    </form>
</body>
</html>
