using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace NikeaProjectWeb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE Email = @Email AND PasswordHash = @Password", con);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // In production, hash and compare securely.

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read()) 
                {
                    string role = reader["Role"].ToString();

                    Session["Username"] = reader["Username"].ToString();
                    Session["UserID"] = reader["UserID"].ToString();
                    Session["Role"] = role;

                    if (role.Equals("admin", StringComparison.OrdinalIgnoreCase))
                    {
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("dashboard.aspx");
                    }
                }
                else
                {
                    lblMessage.Text = "Invalid email or password.";
                }
            }
        }
    }
}
