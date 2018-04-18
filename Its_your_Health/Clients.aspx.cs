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
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                getpatient();
            }
        }

        public void getpatient()
        {
            SqlDataReader rdr = null;
            String @Find = txtsearch.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-O79V75S\\SQLEXPRESS;Initial Catalog=Itsyourhealth;Integrated Security=True";
            con.Open();
            string query7 = "SELECT Distinct(FirstName),Regid ,LastName,Address,Age,Password,Email,Phone,PatientHistory FROM TblRegistration";
            SqlCommand cmd7 = new SqlCommand(query7, con);
            rptpatient.DataSource = cmd7.ExecuteReader();
            rptpatient.DataBind();
            con.Close();
            searchpatient.Visible = true;
        }
        protected void Search_Click(object sender, EventArgs e)
        {
            SqlDataReader rdr = null;
            String @Find = txtsearch.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-O79V75S\\SQLEXPRESS;Initial Catalog=Itsyourhealth;Integrated Security=True";
            con.Open();
            string query7 = "SELECT Distinct(FirstName),Regid ,LastName,Address,Age,Password,Email,Phone,PatientHistory FROM TblRegistration  WHERE  FirstName LIKE" + "'" + txtsearch.Text.Trim().ToString() + "'" + "or LastName like " + "'" + txtsearch.Text.Trim().ToString() + "'" + "or Address like " + "'" + txtsearch.Text.Trim().ToString() + "'" + "or Age like " + "'" + txtsearch.Text.Trim().ToString() + "'" + "or Email like " + "'" + txtsearch.Text.Trim().ToString() + "'" + "or Phone like " + "'" + txtsearch.Text.Trim().ToString() + "'";
            SqlCommand cmd7 = new SqlCommand(query7, con);
            rptpatient.DataSource = cmd7.ExecuteReader();
            rptpatient.DataBind();
            con.Close();
            searchpatient.Visible = true;           

        }

        protected void clear_Click(object sender, EventArgs e)
        {           
            txtsearch.Text = "";
            Response.Redirect(Request.RawUrl);
        }
        private void BindRepeater(Repeater rp, DataTable dt)
        {
            rp.DataSource = dt;
            rp.DataBind();

        }

        protected void return_Click(object sender, EventArgs e)
        {


            Response.Redirect("Webform1.aspx");

        }


        protected void rptpatient_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Edit")
            {
                Label lblhstry = (e.Item.FindControl("lblhstry") as Label);
                TextBox txthistry = (e.Item.FindControl("txthistry") as TextBox);
                Button btnupdate = (e.Item.FindControl("btnupdate") as Button);
                Button btnedit = (e.Item.FindControl("btnedit") as Button);
                lblhstry.Visible = false;
                txthistry.Visible = true;
                btnupdate.Visible = true;
                btnedit.Visible = false;


            }
            if (e.CommandName == "Sent")
            {
                Label lblrequest = (e.Item.FindControl("lblrequest") as Label);
                lblrequest.Visible = true;
            }
            if (e.CommandName == "Update")
            {
                Label Regid = (e.Item.FindControl("id") as Label);
                TextBox txthistry = (e.Item.FindControl("txthistry") as TextBox);
                string history = txthistry.Text;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-O79V75S\\SQLEXPRESS;Initial Catalog=Itsyourhealth;Integrated Security=True";
                con.Open();
                string query7 = "Update TblRegistration set PatientHistory = "+"'" + history + "'"+ " "+"WHERE Regid ="+"'" + Regid.Text+"'";
                SqlCommand cmd7 = new SqlCommand(query7, con);
                cmd7.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}