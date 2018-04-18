<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Its_Your_Health.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:100%;">
         <tr>
             <td>
                 <p>
                     &nbsp;</p>
                 <table >
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="FIRST NAME :"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtfirstname" runat="server" />
            </td>
            <td ><asp:RequiredFieldValidator ID="VALIDATION" ErrorMessage="Required" ForeColor="#666666" ControlToValidate="txtfirstname"
                runat="server" />&nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="LAST NAME :"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtlastname" runat="server" />
            </td>
            <td ><asp:RequiredFieldValidator ID="VALIDATOR2" ErrorMessage="Required" ForeColor="#666666" ControlToValidate="txtlastname"
                runat="server" />&nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="ADDRESS :"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtaddress" runat="server" />
            </td>
            <td >
                <asp:RequiredFieldValidator ID="VALIDATOR3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Required" ForeColor="#666666" />
            </td>
        </tr>
          <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="AGE :"></asp:Label>
              </td>
            <td >
                <asp:TextBox ID="txtage" runat="server" />
              </td>
            <td >
                <asp:RequiredFieldValidator ID="requiredAge" runat="server" ControlToValidate="txtage" ErrorMessage="Required" ForeColor="#666666" />
                <asp:RangeValidator ID="Age" runat="server" ControlToValidate="txtage" ErrorMessage="Sorry but your age is not appropriate for registration" ForeColor="#666666" MaximumValue="120" MinimumValue="18" Type="Integer"></asp:RangeValidator>
              </td>
        </tr>
          <tr>
            <td >
                <asp:Label ID="Label8" runat="server" Text="PASSWORD :"></asp:Label>
                (Should be of 6 characters only)
              </td>
            <td >
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" />
              </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="#666666" />
              </td>
        </tr>
          <tr>
            <td >
                <asp:Label ID="Label9" runat="server" Text="CONFIRM PASSWORD :"></asp:Label>
              </td>
            <td >
                <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" />
              </td>
            <td >
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Oops ! Your password does not match" ForeColor="#666666" />
              </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="EMAIL :"></asp:Label>
              </td>
            <td >
                <asp:TextBox ID="txtemail" runat="server" />
              </td>
            <td >
                <asp:RequiredFieldValidator ID="VALIDATOR8" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Required" ForeColor="#666666" />
                <asp:RegularExpressionValidator ID="VALIDATIONEXPRESSION" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Please Enter a valid email address." ForeColor="#666666" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
              </td>
        </tr>
         <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Text="PHONE :"></asp:Label>
              </td>
            <td >
                <asp:TextBox ID="txtphone" runat="server" />
             </td>
            <td ></td>
        </tr>
           <tr>
            <td >
             
              </td>
            <td >
                
                &nbsp;<td ></td>
        </tr>
           <tr>
            <td class="auto-style5" >
               
                <asp:Button ID="Button2" CssClass="auto-style16" runat="server" Text="Register" OnClick="Button2_Click" />
               
              </td>
            <td class="auto-style5" >
              
                <asp:Button ID="Button3" CssClass="auto-style16" runat="server" Text="Clear" OnClick="Button3_Click" />
              
            <td class="auto-style5" >
                <asp:Label ID="Label13" runat="server"></asp:Label>
               </td>
        </tr>
    </table>
             </td>
         </tr>
     </table>
</asp:Content>
