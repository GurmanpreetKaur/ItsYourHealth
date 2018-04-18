using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Its_Your_Health
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}