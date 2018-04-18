<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Its_Your_Health.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Button ID="btnRegisterPage" runat="server" Text="Register" OnClick="Button1_Click" />
    </p>
    <p>
        <asp:Button ID="btnLoginPage" runat="server"   Text="Login" OnClick="Button2_Click" />
    </p>
      <p>
          &nbsp;</p>
    <p>
          Health Tips</p>
      <p>
          <asp:TextBox ID="txtHealthTips" runat="server" Height="106px" Width="195px"  ></asp:TextBox>
    </p>
     <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Appointment Schedule" />
    </p>
      <p>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Appointment" />
    </p>
     <p>
        <asp:Button ID="Button5" runat="server" Visible="false"  OnClick="Button5_Click" Text="Patients" />
    </p>
</asp:Content>
 