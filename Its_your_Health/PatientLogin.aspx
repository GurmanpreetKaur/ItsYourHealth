<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="PatientLogin.aspx.cs" Inherits="Its_your_Health.PatientLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 451px;
    }
    .auto-style4 {
        width: 451px;
        height: 26px;
    }
    .auto-style5 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style4">View/Edit&nbsp; Profile</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Appointment.aspx">Book Appointment</asp:HyperLink>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewAppointment.aspx">View/Edit Appointment </asp:HyperLink>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Medical History</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3">Lab Test</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Be a Donor</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
