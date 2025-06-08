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
	public partial class OrderHistory : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadOrderHistory();
            }
        }

        void LoadOrderHistory()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString);
            SqlCommand cmd = new SqlCommand(
                "SELECT SalesId, DateConfirmed FROM Sales WHERE Username = @username AND Confirmed = 1 ORDER BY DateConfirmed DESC",
                conn);
            cmd.Parameters.AddWithValue("@username", Session["Username"].ToString());

            try
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                GridViewOrders.DataSource = reader;
                GridViewOrders.DataBind();
            }
            catch (SqlException ex)
            {
                // Optional: Display error message
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
