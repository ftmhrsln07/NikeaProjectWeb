<%@ Page Title="Order History" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="NikeaProjectWeb.OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Order History</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Your Order History</h2>

       <asp:SqlDataSource ID="SqlDataSourceOrders" runat="server"
    ConnectionString="<%$ ConnectionStrings:connShop %>"
    SelectCommand="
        SELECT 
            s.SalesId,
            MAX(s.SalesDate) AS DateConfirmed,
            SUM(i.ItemPrice * s.Quantity) AS TotalAmount
        FROM 
            Sales s
        INNER JOIN 
            Items i ON s.ItemId = i.ItemId
        WHERE 
            s.Username = @username AND s.Confirmed = 1
        GROUP BY 
            s.SalesId
        ORDER BY 
            DateConfirmed DESC">
    <SelectParameters>
        <asp:SessionParameter Name="username" SessionField="Username" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>


   <asp:GridView ID="GridViewOrders" runat="server" 
    DataSourceID="SqlDataSourceOrders" 
    AutoGenerateColumns="false" 
    CssClass="table table-bordered table-striped" 
    GridLines="None" 
    HeaderStyle-CssClass="table-light">
    <Columns>
        <asp:BoundField DataField="SalesId" HeaderText="Sales ID" />
        <asp:BoundField DataField="DateConfirmed" HeaderText="Date" DataFormatString="{0:g}" />
        <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" DataFormatString="{0:c2}" />
        <asp:HyperLinkField 
            Text="Details" 
            DataNavigateUrlFields="SalesId" 
            DataNavigateUrlFormatString="OrderDetails.aspx?SalesId={0}" 
            HeaderText="Details" 
            ControlStyle-CssClass="btn btn-sm btn-info" />
    </Columns>
</asp:GridView>


    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
