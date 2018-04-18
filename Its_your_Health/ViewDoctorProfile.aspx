<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="ViewDoctorProfile.aspx.cs" Inherits="Its_your_Health.ViewDoctorProfile1" %>
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
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Doctor ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Doctor ID" HeaderText="Doctor ID" ReadOnly="True" SortExpression="Doctor ID" />
                    <asp:BoundField DataField="Doctor Name" HeaderText="Doctor Name" SortExpression="Doctor Name" />
                    <asp:BoundField DataField="Doctor Department" HeaderText="Doctor Department" SortExpression="Doctor Department" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Its_Your_HealthConnectionString %>" SelectCommand="SELECT * FROM [Doctor]"></asp:SqlDataSource>
            
        </td>
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
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>
