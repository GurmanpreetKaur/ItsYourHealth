<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="HealthyTips.aspx.cs" Inherits="Its_your_Health.ViewDoctorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 185px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style3">View&nbsp; Profile</td>
        <td class="auto-style5" rowspan="5">
            <asp:TextBox ID="txtTip" runat="server" Height="92px" TextMode="MultiLine" Width="289px"></asp:TextBox>
            <br />
            <asp:Button ID="btnPostTip" runat="server" OnClick="btnPostTip_Click" Text="Post" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">View Appointments</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server">Healthy Tips</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Your Patients</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>
