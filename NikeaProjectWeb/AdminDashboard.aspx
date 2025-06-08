<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="NikeaProjectWeb.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="admin-dashboard container">
        <h1 class="text-center">Admin Dashboard</h1>

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#items">Items</a></li>
            <li><a data-toggle="tab" href="#sales">Sales</a></li>
            <li><a data-toggle="tab" href="#users">Users</a></li>
        </ul>

        <div class="tab-content" style="margin-top: 20px;">
           <!-- Items Tab -->
<div id="items" class="tab-pane fade in active">
    <h3>Manage Items</h3>
    <asp:SqlDataSource ID="SqlDataSourceItems" runat="server"
        ConnectionString="<%$ ConnectionStrings:connShop %>"
        SelectCommand="SELECT ItemId, ItemTitle, ItemPrice, ItemDesc, ItemImage FROM Items"
        InsertCommand="INSERT INTO Items (ItemTitle, ItemPrice, ItemDesc, ItemImage) VALUES (@ItemTitle, @ItemPrice, @ItemDesc, @ItemImage)"
        UpdateCommand="UPDATE Items SET ItemTitle=@ItemTitle, ItemPrice=@ItemPrice, ItemDesc=@ItemDesc, ItemImage=@ItemImage WHERE ItemId=@ItemId"
        DeleteCommand="DELETE FROM Items WHERE ItemId=@ItemId">
        <UpdateParameters>
            <asp:Parameter Name="ItemTitle" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemDesc" Type="String" />
            <asp:Parameter Name="ItemImage" Type="String" />
            <asp:Parameter Name="ItemId" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ItemId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemTitle" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Decimal" />
            <asp:Parameter Name="ItemDesc" Type="String" />
            <asp:Parameter Name="ItemImage" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="gvItems" runat="server"
        DataSourceID="SqlDataSourceItems"
        AutoGenerateColumns="False"
        DataKeyNames="ItemId"
        CssClass="table table-striped table-bordered">
        <Columns>
            <asp:BoundField DataField="ItemId" HeaderText="ID" ReadOnly="true" />
            <asp:BoundField DataField="ItemTitle" HeaderText="Title" />
            <asp:BoundField DataField="ItemPrice" HeaderText="Price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="ItemDesc" HeaderText="Description" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="imgItem" runat="server" ImageUrl='<%# "product/" + Eval("ItemImage") %>' Height="50" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtItemImage" runat="server" Text='<%# Bind("ItemImage") %>' CssClass="form-control" />
                    <br />
                    <asp:Image ID="imgEditItem" runat="server" ImageUrl='<%# "product/" + Eval("ItemImage") %>' Height="50" />
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"
                ButtonType="Button"
                EditText="Edit" DeleteText="Delete"
                ControlStyle-CssClass="btn btn-sm" />
        </Columns>
    </asp:GridView>
</div>


            <!-- Sales Tab -->
            <div id="sales" class="tab-pane fade">
                <h3>Manage Sales</h3>
                <asp:SqlDataSource ID="SqlDataSourceSales" runat="server"
                    ConnectionString="<%$ ConnectionStrings:connShop %>"
                    SelectCommand="SELECT SalesId, ItemId, Quantity, SalesDate, Confirmed, UserID, Username FROM Sales"
                    UpdateCommand="UPDATE Sales SET ItemId=@ItemId, Quantity=@Quantity, SalesDate=@SalesDate, Confirmed=@Confirmed, UserID=@UserID, Username=@Username WHERE SalesId=@SalesId"
                    DeleteCommand="DELETE FROM Sales WHERE SalesId=@SalesId">
                    <UpdateParameters>
                        <asp:Parameter Name="ItemId" Type="Int32" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="SalesDate" Type="DateTime" />
                        <asp:Parameter Name="Confirmed" Type="Boolean" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="SalesId" Type="Int32" />
                    </UpdateParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="SalesId" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="gvSales" runat="server"
                    DataSourceID="SqlDataSourceSales"
                    AutoGenerateColumns="False"
                    DataKeyNames="SalesId"
                    CssClass="table table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="SalesId" HeaderText="Sale ID" ReadOnly="true" />
                        <asp:BoundField DataField="ItemId" HeaderText="Item ID" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="SalesDate" HeaderText="Date" DataFormatString="{0:g}" />
                        <asp:CheckBoxField DataField="Confirmed" HeaderText="Confirmed" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"
                            ButtonType="Button"
                            EditText="Edit" DeleteText="Delete"
                            ControlStyle-CssClass="btn btn-sm" />
                    </Columns>
                </asp:GridView>
            </div>

            <!-- Users Tab -->
            <div id="users" class="tab-pane fade">
                <h3>Manage Users</h3>
                <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server"
                    ConnectionString="<%$ ConnectionStrings:connShop %>"
                    SelectCommand="SELECT UserID, Username, FullName, Email, Role, DateRegistered FROM Users"
                    UpdateCommand="UPDATE Users SET Username=@Username, FullName=@FullName, Email=@Email, Role=@Role WHERE UserID=@UserID"
                    DeleteCommand="DELETE FROM Users WHERE UserID=@UserID">
                    <UpdateParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Role" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </UpdateParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="gvUsers" runat="server"
                    DataSourceID="SqlDataSourceUsers"
                    AutoGenerateColumns="False"
                    DataKeyNames="UserID"
                    CssClass="table table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="true" />
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Role" HeaderText="Role" />
                        <asp:BoundField DataField="DateRegistered" HeaderText="Registered" DataFormatString="{0:d}" />
                        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"
                            ButtonType="Button"
                            EditText="Edit" DeleteText="Delete"
                            ControlStyle-CssClass="btn btn-sm" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
