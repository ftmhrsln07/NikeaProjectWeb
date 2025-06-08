<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NikeaProjectWeb.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />

    <div class="container py-5">
        <div class="row justify-content-center">
            <!-- Left Section -->
            <div class="col-md-6 text-center mb-4">
                <h1>Welcome back</h1>
                <p>Don't have an account? <a href="Register.aspx">Create one here</a></p>
            </div>

            <!-- Right Section (Login Form) -->
            <div class="col-md-6">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />

                <div class="mb-3">
                    <asp:Label AssociatedControlID="txtEmail" runat="server" Text="Email address" CssClass="form-label" />
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
                </div>

                <div class="mb-3">
                    <asp:Label AssociatedControlID="txtPassword" runat="server" Text="Password" CssClass="form-label" />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                </div>

                <div class="form-check mb-3">
                    <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" />
                    <label for="chkRemember" class="form-check-label">Remember me</label>
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn btn-dark w-100" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</asp:Content>
