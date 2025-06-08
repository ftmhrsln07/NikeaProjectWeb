<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="NikeaProjectWeb.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Sales Cart</h2>

        <p class="mb-3">
            <strong>Sales ID:</strong> <asp:Label ID="lblSalesId" runat="server" /> |
            <strong>Date and Time:</strong> <asp:Label ID="lblDateTime" runat="server" />
        </p>

        <asp:GridView ID="GridViewCart" runat="server" AllowPaging="True"
            AutoGenerateColumns="False" DataSourceID="SqlDataSourceCart"
            CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="ItemId" HeaderText="Item ID" />
                <asp:BoundField DataField="ItemTitle" HeaderText="Item Title" />
                <asp:BoundField DataField="ItemPrice" HeaderText="Item Price" DataFormatString="{0:c2}" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" DataFormatString="{0:c2}" ReadOnly="True" />
            </Columns>
        </asp:GridView>

        <p class="fw-bold mt-3">
            Total Amount: <asp:Label ID="lblTotalAmountCart" runat="server" Text="RM0.00" />
        </p>

        <div class="d-flex flex-wrap gap-2 mb-4">
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm Sales" CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel Sales" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
            <asp:Button ID="btnNew" runat="server" Text="New Sales" CssClass="btn btn-secondary" OnClick="btnNew_Click" />
        </div>

        <div class="mb-3">
            <asp:Label ID="lblMessage2" runat="server" CssClass="text-info d-block" />
            <asp:Label ID="lblTotalAmount" runat="server" CssClass="d-block" />
            <asp:Label ID="lblServiceTax" runat="server" CssClass="d-block" />
            <asp:Label ID="lblAmountAfterTax" runat="server" CssClass="d-block" />
            <asp:Label ID="lblRounding" runat="server" CssClass="d-block" />
            <asp:Label ID="lblAmountRounded" runat="server" CssClass="d-block" />
        </div>

        <asp:HyperLink ID="lnkBackToShop" runat="server" NavigateUrl="ProductList.aspx" CssClass="btn btn-link">&larr; Back to Product List</asp:HyperLink>
    </div>

   
    <asp:SqlDataSource ID="SqlDataSourceCart" runat="server"
        ConnectionString="<%$ ConnectionStrings:connShop %>"
        SelectCommand="spSalesGetItems" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblSalesId" Name="salesid" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
