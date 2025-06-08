<%@ Page Title="Order Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="NikeaProjectWeb.OrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Order Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Order Details</h2>
        <asp:Label ID="lblOrderInfo" runat="server" CssClass="fw-bold mb-3 d-block"></asp:Label>
        <asp:GridView ID="GridViewOrderItems" runat="server"
            DataSourceID="SqlDataSourceOrderItems"
            AutoGenerateColumns="False"
            CssClass="table table-bordered table-striped align-middle">
            <Columns>
                <asp:BoundField DataField="ItemTitle" HeaderText="Product" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="ItemPrice" HeaderText="Price" DataFormatString="{0:c2}" />
                <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" DataFormatString="{0:c2}" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblTotal" runat="server" CssClass="fw-bold mt-3 d-block"></asp:Label>
        <a href="OrderHistory.aspx" class="btn btn-link mt-3">&larr; Back to Order History</a>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceOrderItems" runat="server"
        ConnectionString="<%$ ConnectionStrings:connShop %>"
        SelectCommand="
            SELECT 
                i.ItemTitle, 
                s.Quantity, 
                i.ItemPrice, 
                (i.ItemPrice * s.Quantity) AS SubTotal 
            FROM Sales s 
            INNER JOIN Items i ON s.ItemId = i.ItemId 
            WHERE s.SalesId = @SalesId">
        <SelectParameters>
            <asp:QueryStringParameter Name="SalesId" QueryStringField="SalesId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
