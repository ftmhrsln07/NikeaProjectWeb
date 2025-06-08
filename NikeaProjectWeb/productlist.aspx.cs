using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace NikeaProjectWeb
{
    public partial class productlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                // Optionally preload data
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            // No GridView anymore; no reset needed
        }

        protected void btnAddToCart_Command(object sender, CommandEventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            HiddenField hfItemId = (HiddenField)item.FindControl("hfItemId");
            HiddenField hfItemTitle = (HiddenField)item.FindControl("hfItemTitle");
            HiddenField hfItemPrice = (HiddenField)item.FindControl("hfItemPrice");
            TextBox txtQty = (TextBox)item.FindControl("txtQty");

            string itemId = hfItemId.Value;
            string itemTitle = hfItemTitle.Value;
            string itemPrice = hfItemPrice.Value;
            int quantity = 1;

            if (!int.TryParse(txtQty.Text, out quantity) || quantity <= 0)
            {
                quantity = 1;
            }

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString);
            SqlCommand cmd = new SqlCommand("spSalesAddItem", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", GetSalesId());
            cmd.Parameters.AddWithValue("@itemid", itemId);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@username", Session["Username"].ToString());

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMessage1.Text = $"Added {quantity} × {itemTitle} to cart.";
            }
            catch (SqlException ex)
            {
                lblMessage1.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        string GetSalesId()
        {
            if (Session["SalesId"] == null)
            {
                string hexTicks = DateTime.Now.Ticks.ToString("X");
                string salesId = hexTicks.Substring(hexTicks.Length - 15, 9);
                Session["SalesId"] = salesId;
            }
            return Session["SalesId"].ToString();
        }
    }
}
