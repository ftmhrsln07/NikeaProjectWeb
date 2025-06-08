using System;
using System.Configuration;
using System.Data.SqlClient;

namespace NikeaProjectWeb
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        static double totalAmount;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("Login.aspx");

            if (!IsPostBack)
            {
                lblSalesId.Text = GetSalesId();
                lblDateTime.Text = DateTime.Now.ToString();
                GetTotalAmount();
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

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            ConfirmSale();
            DisplayInvoice();
        }

        void ConfirmSale()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString);
            SqlCommand cmd = new SqlCommand("spSalesConfirm", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesId.Text);
            cmd.Parameters.AddWithValue("@username", Session["Username"]);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMessage2.Text = "Sales confirmed!";
            }
            catch (SqlException ex)
            {
                lblMessage2.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        void GetTotalAmount()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString);
            SqlCommand cmd = new SqlCommand("spSalesGetTotalAmount", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesId.Text);

            try
            {
                conn.Open();
                totalAmount = (double)cmd.ExecuteScalar();
                lblTotalAmountCart.Text = totalAmount.ToString("c2");
            }
            catch (SqlException ex)
            {
                lblMessage2.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        void DisplayInvoice()
        {
            double serviceTax = totalAmount * 0.06;
            double amountAfterTax = totalAmount + serviceTax;
            double amountRounded = Math.Round(amountAfterTax / 0.05) * 0.05;
            double rounding = amountRounded - amountAfterTax;

            lblTotalAmount.Text = "Total amount: " + totalAmount.ToString("c2");
            lblServiceTax.Text = "Service tax (6%): " + serviceTax.ToString("c2");
            lblAmountAfterTax.Text = "Amount after tax: " + amountAfterTax.ToString("c2");
            lblRounding.Text = "Rounding: " + rounding.ToString("c2");
            lblAmountRounded.Text = "Amount to pay: " + amountRounded.ToString("c2");
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            RemoveUnconfirmedSales();
            ClearCart();
            ResetSessionSalesId();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            RemoveUnconfirmedSales();
            ClearCart();
            ResetSessionSalesId();
        }

        void RemoveUnconfirmedSales()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connShop"].ConnectionString);
            SqlCommand cmd = new SqlCommand("spSalesRemoveNotConfirmed", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesId.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                lblMessage2.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        void ClearCart()
        {
            lblTotalAmount.Text = "";
            lblServiceTax.Text = "";
            lblAmountAfterTax.Text = "";
            lblRounding.Text = "";
            lblAmountRounded.Text = "";
            lblMessage2.Text = "";
            lblTotalAmountCart.Text = "RM0.00";
        }

        void ResetSessionSalesId()
        {
            Session.Remove("SalesId");
            lblSalesId.Text = GetSalesId();
            lblDateTime.Text = DateTime.Now.ToString();
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}
