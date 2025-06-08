using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NikeaProjectWeb
{
	public partial class register : System.Web.UI.Page
	{
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;
            string email = txtEmail.Text.Trim();

            // Password match check
            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Password complexity check
            if (password.Length < 8 ||
                !password.Any(char.IsDigit) ||
                !password.Any(ch => !char.IsLetterOrDigit(ch)))
            {
                lblMessage.Text = "Password must be at least 8 characters long, contain a number, and a special character.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString))
            {
                con.Open();

                // Check if username or email already exists
                string checkSql = "SELECT Username, Email FROM Users WHERE Username = @Username OR Email = @Email";
                using (SqlCommand checkCmd = new SqlCommand(checkSql, con))
                {
                    checkCmd.Parameters.AddWithValue("@Username", username);
                    checkCmd.Parameters.AddWithValue("@Email", email);

                    using (SqlDataReader reader = checkCmd.ExecuteReader())
                    {
                        bool usernameExists = false;
                        bool emailExists = false;
                        while (reader.Read())
                        {
                            if (reader["Username"].ToString().Equals(username, StringComparison.OrdinalIgnoreCase))
                                usernameExists = true;
                            if (reader["Email"].ToString().Equals(email, StringComparison.OrdinalIgnoreCase))
                                emailExists = true;
                        }

                        if (usernameExists)
                        {
                            lblMessage.Text = "Username is already taken.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }
                        if (emailExists)
                        {
                            lblMessage.Text = "Email is already registered.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }
                    }
                }

                // Insert new user if no duplicates
                SqlCommand cmd = new SqlCommand("INSERT INTO Users (Username, PasswordHash, Email, Role) VALUES (@Username, @Password, @Email, 'Customer')", con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password); // Hash in real apps
                cmd.Parameters.AddWithValue("@Email", email);

                try
                {
                    cmd.ExecuteNonQuery();

                    // Automatically log in the user
                    Session["Username"] = username;
                    Session["Role"] = "Customer";

                    Response.Redirect("home.aspx");
                }
                catch (Exception)
                {
                    lblMessage.Text = "Registration failed. Please try again later.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }


    }
}
