using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Its_Your_Health
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constring = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Its_Your_Health;Integrated Security=True";
            SqlConnection connect = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Insert into Patient values(@FirstName,@LastName,@Address,@Age,@Password,@ConfirmPassword,@Email,@Phone)", connect);
            command.Parameters.AddWithValue("@FirstName", txtfirstname.Text);
            command.Parameters.AddWithValue("@LastName", txtlastname.Text);
            command.Parameters.AddWithValue("@Address", txtaddress.Text);
            command.Parameters.AddWithValue("@Age", txtage.Text);
            command.Parameters.AddWithValue("@Password", txtpassword.Text);
            command.Parameters.AddWithValue("@ConfirmPassword", txtconfirmpassword.Text);
            command.Parameters.AddWithValue("@Email", txtemail.Text);
            command.Parameters.AddWithValue("@Phone", txtphone.Text);
            connect.Open();
            command.ExecuteNonQuery();
            Label13.Text = "successful";
            connect.Close();

        }


        protected void Button3_Click(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnRegisterPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}