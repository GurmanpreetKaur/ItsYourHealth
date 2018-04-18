<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="Its_your_Health.DoctorLogin" %>
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
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewDoctorProfile.aspx">View Profile</asp:HyperLink>
        </td>
        <td class="auto-style5" rowspan="5">
            
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">View Appointments</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HealthyTips.aspx">Healthy Tips</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Your Patients</td>
    </tr>
         <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Clients.aspx">Patients</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>
