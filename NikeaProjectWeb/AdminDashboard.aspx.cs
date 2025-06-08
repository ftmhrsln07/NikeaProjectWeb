using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NikeaProjectWeb
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null || !Session["Role"].ToString().Equals("admin", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                BindAll();
            }
        }

        private void BindAll()
        {
            gvItems.DataBind();
            gvSales.DataBind();
            gvUsers.DataBind();
        }

        // Items GridView Handlers
        protected void gvItems_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvItems.EditIndex = e.NewEditIndex;
            gvItems.DataBind();
        }

        protected void gvItems_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvItems.EditIndex = -1;
            gvItems.DataBind();
        }

        protected void gvItems_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // SqlDataSource handles update automatically via parameters
            gvItems.EditIndex = -1;
            gvItems.DataBind();
        }

        protected void gvItems_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // SqlDataSource handles delete automatically via parameters
            gvItems.DataBind();
        }

        // Sales GridView Handlers
        protected void gvSales_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSales.EditIndex = e.NewEditIndex;
            gvSales.DataBind();
        }

        protected void gvSales_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSales.EditIndex = -1;
            gvSales.DataBind();
        }

        protected void gvSales_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            gvSales.EditIndex = -1;
            gvSales.DataBind();
        }

        protected void gvSales_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gvSales.DataBind();
        }

        // Users GridView Handlers
        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            gvUsers.EditIndex = -1;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gvUsers.DataBind();
        }
    }
}
