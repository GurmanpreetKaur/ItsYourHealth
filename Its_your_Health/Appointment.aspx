<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Its_your_Health.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table runat="server" id="appointmentreg">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Patient NAME:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPatientNAME" runat="server" required="true" />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Age :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAge" runat="server" required="true" />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAppointmentDate" runat="server" required="true" />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="AppointmentTime:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAppointmentTime" runat="server" required="true" />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" required="true" />
            </td>

        </tr>

        <tr>
            <td></td>
            <td style="margin-top: 20px">

                <asp:Button ID="Button2" CssClass="auto-style16" Style="float: right; margin-top: 20px" runat="server" Text="Submit" OnClick="Button2_Click" />

            </td>

            <td>
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>

        </tr>
    </table>
    <asp:LinkButton ID="LinkButton1" runat="server" Style="margin-top: 50px !important; margin-left: 300px !important; background-color:gainsboro; border: none; color: black; padding: 5px 5px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer;"
        OnClick="return_Click">Return To Homepage</asp:LinkButton>
</asp:Content>
