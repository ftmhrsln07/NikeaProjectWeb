<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productlist.aspx.cs" Inherits="NikeaProjectWeb.productlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">

        <h2 class="mb-4 text-center">Sales Items</h2>
        <asp:Label ID="lblMessage1" runat="server" CssClass="alert alert-success d-block" />

        <div class="mb-3 text-end">
            <asp:HyperLink ID="lnkToCart" runat="server" NavigateUrl="ShoppingCart.aspx" CssClass="btn btn-primary">Go to Cart</asp:HyperLink>
        </div>

        <div class="mb-4">
            <label class="form-label fw-bold" for="<%= ddlCategory.ClientID %>">Select category:</label>
            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True"
                DataSourceID="SqlDataSourceCategories" DataTextField="CatTitle" DataValueField="CatId"
                OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" CssClass="form-select w-50">
            </asp:DropDownList>
        </div>

        <div class="row" id="productList">
            <asp:Repeater ID="RepeaterProducts" runat="server" DataSourceID="SqlDataSourceItems">
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
<img src='<%# Eval("ItemImage", "product/{0}") %>' alt='<%# Eval("ItemTitle") %>' 
     class="card-img-top mx-auto d-block img-fluid" style="height: 180px; width: auto; object-fit: cover;" />


                         <div class="card-body d-flex flex-column text-center">
                                <h5 class="card-title"><%# Eval("ItemTitle") %></h5>
                                <p class="card-text"><strong>Price:</strong> <%# String.Format("{0:C2}", Eval("ItemPrice")) %></p>
                                <p class="card-text"><%# Eval("ItemDesc") %></p>

                                <asp:HiddenField ID="hfItemId" runat="server" Value='<%# Eval("ItemId") %>' />
                                <asp:HiddenField ID="hfItemTitle" runat="server" Value='<%# Eval("ItemTitle") %>' />
                                <asp:HiddenField ID="hfItemPrice" runat="server" Value='<%# Eval("ItemPrice") %>' />

                                <div class="mb-2">
                                    <label for='<%# "txtQty_" + Container.ItemIndex %>' class="form-label">Quantity:</label>
<asp:TextBox ID="txtQty" runat="server" Text="1" TextMode="Number" 
    CssClass="form-control qty-box d-inline-block" style="max-width: 70px;" min="1" />
                                </div>

                                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart"
                                    CommandName="AddToCart" OnCommand="btnAddToCart_Command"
                                    CssClass="btn btn-success mt-auto" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSourceCategories" runat="server"
        ConnectionString="<%$ ConnectionStrings:connShop %>"
        SelectCommand="SELECT * FROM [Categories] ORDER BY [CatTitle]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceItems" runat="server"
        ConnectionString="<%$ ConnectionStrings:connShop %>"
        SelectCommand="SELECT * FROM [Items] WHERE ([CatId] = @CatId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCategory" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
