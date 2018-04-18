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
    public partial class ViewAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = Session["Username"].ToString();
            if (!this.IsPostBack)
            {


              
             
            }
            lbluser.Text = Session["Username"].ToString();
          
            if (Username=="Doctor")
            {
                viewallappointment.Visible = true;
                viewpatientreg.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            appointmentdetails.Visible = false;
             
        }

        protected void return_Click(object sender, EventArgs e)
        {
            

                Response.Redirect("Webform1.aspx");
           
        }
    }
}