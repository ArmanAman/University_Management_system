<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchViewUI.aspx.cs" Inherits="StockManagementSystemApp.UI.SearchViewUI" EnableEventValidation="false" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Category</title>
    <style>
        #fieldSet {
            width: 70%;
            margin: 50px;
            margin-left: 150px;
            background-color: white;
        }

        #Button1 {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #pdfbuttonid {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #TextBoxItemName {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #TextBoxReorder {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #DropDownCategoryList {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #DropDownCompanyList {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        .topnav {
            overflow: hidden;
            background-color: white;
        }


            .topnav a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }


                .topnav a:hover {
                    background-color: #ddd;
                    color: white;
                }

        #fieldSet2 {
            width: 30%;
            margin: auto;
            background-color: white;
        }
    </style>

</head>

<body id="page-top" background="../IMG/BackGround.jpg">
    <fieldset>
        <header>
            <div id="header" align="center">
                <h2>Stock Management System</h2>

            </div>
        </header>
        <form runat="server">
            <fieldset id="fieldSet">


                <div class="topnav">


                    <a href="CategoryUI.aspx">
                        <span>Category</span>
                    </a>

                    <a href="CompanyUI.aspx">

                        <span>Company</span>
                    </a>

                    <a href="ItemUI.aspx">
                        <span>Item</span>
                    </a>

                    <a href="StockInUI.aspx">
                        <span>Stock In</span>
                    </a>

                    <a href="StockOutUI.aspx">
                        <span>Stock Out</span>
                    </a>

                    <a href="SearchViewUI.aspx">
                        <span>Search and View</span>
                    </a>

                    <a href="ViewSalesDateUI.aspx">
                        <span>View Sales</span>
                    </a>

                    <a>
                        <asp:Button ID="Button2" runat="server" OnClick="LogoutClick" Text="Log Out" />
                        
                    </a>

                </div>

                <div>
                    <fieldset id="fieldSet2">
                        <div>
                            <div>
                                <div>
                                    <div>
                                        <div>
                                            <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="Company"></asp:Label>

                                            <div>

                                                <asp:DropDownList ID="DropDownCompanyList" runat="server" OnSelectedIndexChanged="DropDownCompanySelectedIndexChange" AutoPostBack="True"></asp:DropDownList>
                                                <asp:Label ID="Label1" class="col-sm-3 col-form-label" runat="server" Text="Category"></asp:Label>
                                            </div>
                                            <div>

                                                <asp:DropDownList ID="DropDownCategoryList" runat="server"></asp:DropDownList>
                                            </div>


                                        </div>
                                    </div>
                                </div>

                                <div>

                                    <div>

                                        <asp:Button ID="Button1" runat="server" Text="Search" Width="129px" OnClick="searchButtonClick" />

                                    </div>

                                </div>
                                <div>
                                    <div>
                                        <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>

                                    </div>
                                </div>
                                <div>
                                    <asp:Label ID="LabelOutput" runat="server"></asp:Label>
                                    <asp:GridView ID="SearchViewGridViewList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                                        <Columns>

                                            <asp:TemplateField>
                                                <HeaderTemplate>Serial No.</HeaderTemplate>
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Item">
                                                <ItemTemplate>
                                                    <asp:Label ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Company">
                                                <ItemTemplate>

                                                    <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Available Quantity">
                                                <ItemTemplate>
                                                    <asp:Label ID="idAvailableQuantity" runat="server" Text='<%# Eval("AvailableQuantity") %>'></asp:Label>

                                                </ItemTemplate>


                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Reorder Level">
                                                <ItemTemplate>
                                                    <asp:Label ID="idreorderLevele" runat="server" Text='<%# Eval("ReorderLevel") %>'></asp:Label>

                                                </ItemTemplate>


                                            </asp:TemplateField>


                                        </Columns>
                                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                    </asp:GridView>
                                    <div>

                                        <asp:Button ID="pdfbuttonid" class="btn btn-warning buttonmargin" runat="server" Text="Export to pdf" Visible="False" Width="120px" Height="35px" OnClick="ButtonPdfClick" />
                                    </div>


                                </div>

                            </div>
                        </div>
                    </fieldset>
                </div>

            </fieldset>

        </form>
    </fieldset>

</body>

</html>
