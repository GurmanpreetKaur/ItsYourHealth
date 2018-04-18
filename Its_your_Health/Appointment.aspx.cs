using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Its_your_Health
{
    public partial class Appointment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string username = Session["Username"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-O79V75S\\SQLEXPRESS;Initial Catalog=Itsyourhealth;Integrated Security=True";
            con.Open();
            string query = "insert into PatientInformation(PatientName, Age, AppointmentDate, AppointmentTime, Description, Username ) values('" + txtPatientNAME.Text + "','" + Convert.ToInt16(txtAge.Text) + "','" + Convert.ToDateTime(txtAppointmentDate.Text) + "','" + Convert.ToDateTime(txtAppointmentTime.Text) + "','" + txtDescription.Text + "','" + username + "' )";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label13.Text = "successful";

        }
        protected void return_Click(object sender, EventArgs e)
        {


            Response.Redirect("Webform1.aspx");

        }
    }
}