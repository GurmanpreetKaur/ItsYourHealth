using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Its_your_Health
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = Its_Your_Health; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select * from Users where UserName=@UserName and Password=@Password", con);
                cmd.Parameters.AddWithValue("@UserName", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (dt.Rows.Count > 0)
                {
                
                    if(rbPatient.Checked == true)
                    {
                       
                        Response.Redirect("PatientLogin.aspx");
                   
                    }
                    else if(rbDoctor.Checked == true)
                    {
                   
                        Response.Redirect("DoctorLogin.aspx");
                    }
                }
                else
                {
                    Label1.Text = "Your username and Password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            

        
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (rbPatient.Enabled == true)
            {
                Response.Redirect("Register.aspx");
            }
        }

        protected void rbDoctor_CheckedChanged(object sender, EventArgs e)
        {
            btnRegister.Enabled = false;
        }
    }
}