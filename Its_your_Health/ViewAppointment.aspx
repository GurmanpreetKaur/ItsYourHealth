<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAppointment.aspx.cs" Inherits="Its_your_Health.ViewAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
table, th, td {
    border: 1px solid black;
    background-color:white!important;
    padding:10px;
}
</style>
    <div runat="server" visible="true" id="appointmentdetails"> 
     <h2 style="text-align:center"> <b>Appointment Details </b> </h2>
           <asp:Label ID="lbluser" runat="server" Text="   " Visible="false"></asp:Label>
      
  
    </div>


    <div id="viewallappointment" runat="server" visible="false" >

  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Patientid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Patientid" HeaderText="Patientid" InsertVisible="False" ReadOnly="True" SortExpression="Patientid" />
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ItsyourhealthConnectionString %>" SelectCommand="SELECT [Patientid], [PatientName], [Age], [AppointmentDate], [AppointmentTime], [Description] FROM [PatientInformation]">
    </asp:SqlDataSource>
        
      </div>
    <div id="viewpatientreg" runat="server" visible="true" >

      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Patientid" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="Patientid" HeaderText="Patientid" InsertVisible="False" ReadOnly="True" SortExpression="Patientid" />
              <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
              <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
              <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
              <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
              <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
          </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ItsyourhealthConnectionString %>" SelectCommand="SELECT [Patientid], [PatientName], [Age], [AppointmentDate], [AppointmentTime], [Description] FROM [PatientInformation]" DeleteCommand="DELETE FROM [PatientInformation] WHERE [Patientid] = @original_Patientid" InsertCommand="INSERT INTO [PatientInformation] ([PatientName], [Age], [AppointmentDate], [AppointmentTime], [Description]) VALUES (@PatientName, @Age, @AppointmentDate, @AppointmentTime, @Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [PatientInformation] SET [PatientName] = @PatientName, [Age] = @Age, [AppointmentDate] = @AppointmentDate, [AppointmentTime] = @AppointmentTime, [Description] = @Description WHERE [Patientid] = @original_Patientid">
        <DeleteParameters>
            <asp:Parameter Name="original_Patientid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter DbType="Time" Name="AppointmentTime" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter DbType="Time" Name="AppointmentTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Patientid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    <asp:Button ID="return" runat="server" Style ="margin-top:50px;margin-left:300px" Text="Return To Homepage" OnClick="return_Click" />
</asp:Content>
