<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Its_your_Health.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <br />
                <br />
                Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <br />
                <br />
            
                <asp:RadioButton ID="rbPatient" runat="server" GroupName="option" Text="Patient" />
                <asp:RadioButton ID="rbDoctor" runat="server" GroupName="option" Text="Doctor" OnCheckedChanged="rbDoctor_CheckedChanged" />
            
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
                Don&#39;t Have an Account?<br />
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
