using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Its_your_Health
{
    public partial class ViewDoctorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPostTip_Click(object sender, EventArgs e)
        {
            if(Session["txtHealthyTips.Text"] != null)
            {
                txtTip.Text = (string)Session["txtHealthyTips.Text"];
            }
        }
    }
}