<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="Its_your_Health.Clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table, th, td {
            border: 1px solid black;
            background-color: white !important;
            padding: 10px;
        }

        col60 {
            width: 50%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row ">
            <div class="col60">
            </div>
            <div class="col-md-4" style="margin-bottom: 15px">

                <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                <asp:Button ID="clear" runat="server" Text="Clear" OnClick="clear_Click" />

            </div>
        </div>

        <div class="row col-md-12" runat="server" id="searchpatient" visible="false">

            <table id="example" class="table table-hover display  pb-30">
                <thead>
                    <tr>

                        <th>FirstName</th>
                        <th>LastName</th>
                        <th>Address  </th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>PatientHistory</th>
                        <th>Action</th>                       
                        <th>Lab Test Request </th>

                    </tr>
                </thead>


                <tbody>
                    <asp:Repeater ID="rptpatient" runat="server" OnItemCommand="rptpatient_ItemCommand">
                        <ItemTemplate>
                            <tr>

                                <td>
                                     <asp:Label ID="id" Visible="false" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"Regid")%>'>
                                    </asp:Label>
                                    <asp:Label ID="lblonlinename" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"FirstName")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"LastName")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"Address")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"Age")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"Email")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"Phone")%>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblhstry" runat="server" class="ta" Text='<%#DataBinder.Eval(Container.DataItem,"PatientHistory")%>'>
                                    </asp:Label>
                                    <asp:TextBox ID="txthistry" Visible="false" runat="server"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:Button ID="btnedit" runat="server" CommandName="Edit" Text="Edit"  />
                                    <asp:Button ID="btnupdate" Visible="false" CommandName="Update" runat="server" Text="Update"   />

                                </td>
                                <td>
                                    <asp:Button ID="Sent" runat="server" Text="Lab Test Request" CommandName="Sent"  />
                                </td>
                                <center>
                                     <asp:Label ID="lblrequest" style="color:red;font-weight:bold; margin-bottom:20px;font-size:24px;text-align:center" runat="server" Visible="false" Text="Patient Details has been sent for lab test request" class="ta">
            </asp:Label>
                                </center>
                                

                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>
            </table>

           


        </div>
        <%--<div class="row col-md-12" runat="server" id="allPatient" visible="true">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Regid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="PatientHistory" HeaderText="PatientHistory" SortExpression="PatientHistory" />


                    <asp:BoundField DataField="Regid" HeaderText="Regid" InsertVisible="False" ReadOnly="True" SortExpression="Regid" />


                </Columns>
            </asp:GridView>
        </div>--%>
         <asp:LinkButton ID="LinkButton1" runat="server" Style="margin-top: 50px !important; margin-left: 300px !important; background-color:gainsboro; border: none; color: black; padding: 5px 5px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer;"
        OnClick="return_Click">Return To Homepage</asp:LinkButton>
    </div>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ItsyourhealthConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Address], [Age], [Password], [Email], [Phone], [PatientHistory], [Regid] FROM [TblRegistration]" DeleteCommand="DELETE FROM [TblRegistration] WHERE [Regid] = @Regid" InsertCommand="INSERT INTO [TblRegistration] ([FirstName], [LastName], [Address], [Age], [Password], [Email], [Phone], [PatientHistory]) VALUES (@FirstName, @LastName, @Address, @Age, @Password, @Email, @Phone, @PatientHistory)" UpdateCommand="UPDATE [TblRegistration] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [Age] = @Age, [Password] = @Password, [Email] = @Email, [Phone] = @Phone, [PatientHistory] = @PatientHistory WHERE [Regid] = @Regid">
        <DeleteParameters>
            <asp:Parameter Name="Regid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="PatientHistory" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="PatientHistory" Type="String" />
            <asp:Parameter Name="Regid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
