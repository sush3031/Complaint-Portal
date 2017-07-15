<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="ADRDE2" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            width: 735px;
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFCCFF">
    <div style="font-family: 'Arial Rounded MT Bold'; font-size: xx-large; color: #800080; background-color: #C0C0C0; position: relative; z-index: auto; top: 0px; left: 0px; width: 1229px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; WELCOME USER !!</div>
        <p style="width: 1233px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; USER-NAME :-&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="username" runat="server" Enabled="False" Height="21px" Width="228px" BackColor="#FFFFCC" ForeColor="#FF9933"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GROUP :-&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="group" runat="server" Enabled="False" Height="21px" Width="206px" BackColor="#FFFFCC"></asp:TextBox>
        </p>
        <p style="width: 1233px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DESIGNATION :-&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="designation" runat="server" Enabled="False" Height="21px" Width="229px" BackColor="#FFFFCC"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; CONTACT-NO :-&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="contact" runat="server" Height="21px" Width="207px" BackColor="#FFFFCC"></asp:TextBox>
        </p>
        <p style="width: 1233px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
&nbsp;ROOM-NO/APT. NO :-&nbsp;
            <asp:TextBox ID="room" runat="server" Height="21px" Width="231px" BackColor="#FFFFCC"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 1229px">
&nbsp;<table border="0" cellpadding="2" cellspacing="3" width="100%">

<tr>
<td style="font-size: x-large; font-weight: bolder; color: #800000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AREA&nbsp; :-&nbsp;&nbsp;
             
        <asp:DropDownList ID="area" runat="server" Height="21px" Width="236px" style="margin-bottom: 0px" OnSelectedIndexChanged="On_SelectedIndexChanged" AutoPostBack="true" BackColor="#FFFFCC">
                <asp:ListItem Text="View1" Value="Technical">TECHNICAL</asp:ListItem>
                <asp:ListItem Text="View2" Value="Residential">RESIDENTIAL</asp:ListItem>
            </asp:DropDownList>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            </td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td colspan="3">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
<table width="100%" cellpadding="2" cellspacing="5">
<tr>

   


<td>
<asp:View ID="View1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="technical" runat="server" Height="21px" Width="230px" BackColor="#FFFFCC">
        <asp:ListItem>TEST AND EVALUATION CENTER</asp:ListItem>
        <asp:ListItem>TECHNOLOGY CENTER</asp:ListItem>
        <asp:ListItem>EMW</asp:ListItem>
        <asp:ListItem>HEAVY DROP</asp:ListItem>
        <asp:ListItem>HANGAR</asp:ListItem>
    </asp:DropDownList>
    </asp:View>
</td>
<td>
<asp:View ID="View2" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="residential" runat="server" Height="21px"  Width="191px" BackColor="#FFFFCC">
        <asp:ListItem>RAKSHA VIHAR</asp:ListItem>
        <asp:ListItem>VIGYAN VIHAR - I</asp:ListItem>
        <asp:ListItem>VIGYAN VIHAR - II</asp:ListItem>
        <asp:ListItem>ADRDE COLONY</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:View>
</td>
<td>
    &nbsp;</td>
</tr>
</table>
</asp:MultiView></td>
</tr>
</table>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p style="width: 1229px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
            &nbsp;&nbsp;COMPLAINT-TYPE&nbsp; :-&nbsp;&nbsp;
            <asp:DropDownList ID="compType" runat="server" Height="21px" Width="237px" BackColor="#FFFFCC">
                <asp:ListItem>MECHANICAL</asp:ListItem>
                <asp:ListItem>ELECTRICAL</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 1229px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; COMPLAINT :-&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="complaint" runat="server" style="margin-bottom: 1px" TextMode="MultiLine" BackColor="#FFFFCC"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                    <cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgPopup" runat="server" TargetControlID="datetxt" Format="dd/MM/yyyy"> </cc1:CalendarExtender>  
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="width: 1229px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE&nbsp; :-&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="datetxt" runat="server" style="z-index: 1; left: 544px; top: 526px; " BackColor="#FFFFCC"></asp:TextBox>  
                    <cc1:CalendarExtender ID="datetxt_CalendarExtender" PopupButtonID="imgPopup" runat="server" TargetControlID="datetxt" Format="dd/MM/yyyy"> </cc1:CalendarExtender>  
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 1229px; font-size: x-large; font-weight: bolder; font-style: italic; color: #800000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="TIME 1 :-"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <cc1:TimeSelector ID="Timetxt" runat="server" style="margin-bottom: 0px" AmPm="PM" BorderColor="Silver" Date="" Hour="0" 
  Minute="0" Second="0" SelectedTimeFormat="Twelve" Height="20px" Width="130px" BackColor="#FFCCFF"></cc1:TimeSelector>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p style="width: 1229px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text=" TIME 2  :- " Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Maroon"></asp:Label>
&nbsp;&nbsp; &nbsp;
&nbsp;<cc1:TimeSelector ID="TimeSelector1" runat="server" style="margin-bottom: 0px" AmPm="PM" BorderColor="Silver" Date="" Hour="0" 
  Minute="0" Second="0" SelectedTimeFormat="Twelve" Height="16px" Width="128px" BackColor="#FFCCFF"></cc1:TimeSelector>
        </p>
        <p style="width: 1229px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="TIME 3 :-" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Maroon"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<cc1:TimeSelector ID="TimeSelector2" runat="server" style="margin-bottom: 0px" AmPm="PM" BorderColor="Silver" Date="" Hour="0" 
  Minute="0" Second="0" SelectedTimeFormat="Twelve" Height="26px" Width="137px" BackColor="#FFCCFF"></cc1:TimeSelector>
            &nbsp;</p>
        <p style="width: 1229px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="30px" Text="CHECK YOUR STATUS" Width="226px" OnClick="Button1_Click" BackColor="#FF9999" Font-Bold="True" ForeColor="#660033" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="31px" Text="SUBMIT" Width="153px" OnClick="Button2_Click" BackColor="#FF9999" Font-Bold="True" ForeColor="#660033" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="29px" style="margin-left: 11px" Text="LOGOUT" Width="159px" OnClick="Button3_Click" BackColor="#FF9999" Font-Bold="True" ForeColor="#660033" />
&nbsp;&nbsp;&nbsp;
        </p>
        <p style="width: 1229px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblmsg" runat="server" Enabled="False" Text="lblmsg" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </p>
        <p style="width: 1229px">
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [CCadmin]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />

        <cc1:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></cc1:ToolkitScriptManager>  
                <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </div> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 



    </form>
</body>
</html>
