using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NikeaProjectWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is logged in
                if (Session["username"] != null)
                {
                    lblUserGreeting.Text = "Welcome, " + Session["username"].ToString();

                    // Show logout, hide login/register
                    lnkLogin.Visible = false;
                    lnkRegister.Visible = false;
                    lnkLogout.Visible = true;
                }
                else
                {
                    lblUserGreeting.Text = "Hello, Guest";

                    // Show login/register, hide logout
                    lnkLogin.Visible = true;
                    lnkRegister.Visible = true;
                    lnkLogout.Visible = false;
                }
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            // Clear session and redirect to home
            Session.Clear();
            Session.Abandon(); // Optional: ensures session is abandoned
            Response.Redirect("home.aspx");
        }
    }
}
