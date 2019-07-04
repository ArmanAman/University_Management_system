<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesDateUI.aspx.cs" Inherits="StockManagementSystemApp.UI.ViewSalesDateUI" EnableEventValidation="false" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Sales Date</title>
    <style>
        #fieldSet {
            width: 70%;
            margin: 50px;
            margin-left: 150px;
            background-color: white;
        }

        #Button2 {
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

        #FromDateTextboxId {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #ToDateTextboxId {
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
                        <asp:Button ID="Button1" runat="server" OnClick="LogoutClick" Text="Log Out" />
                    </a>

                </div>

                <div>
                    <fieldset id="fieldSet2">
                        <div>
                            <div>
                                <div>
                                    <div>
                                        <div>
                                            <asp:Label ID="Label3" runat="server" Text="From Date"></asp:Label>

                                            <div>

                                                <asp:TextBox ID="FromDateTextboxId" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label>
                                            </div>
                                            <div>

                                                <asp:TextBox ID="ToDateTextboxId" CssClass="form-control" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <asp:Button ID="Button2" runat="server" OnClick="SearchButtonClick" Width="129px" Text="Search" />
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div>
                                    <asp:GridView ID="SearchSellGridViewList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>
                                            <asp:TemplateField>
                                                <HeaderTemplate>Serial No.</HeaderTemplate>
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Company Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="CompanyNameID" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Item">
                                                <ItemTemplate>
                                                    <asp:Label ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Sale Quantity">
                                                <ItemTemplate>

                                                    <asp:Label ID="salequantityid" runat="server" Text='<%# Eval("SaleQuantity") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
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
    <script>
        $(document).ready(function () {
            $("#<%= FromDateTextboxId.ClientID %>").datepicker({
                format: "yyyy-mm-dd",
                autoclose: true,
                todayHighlight: true
            });

            $("#<%= ToDateTextboxId.ClientID %>").datepicker({
                format: "yyyy-mm-dd",
                autoclose: true,
                todayHighlight: true
            });
        });

</script>

</body>

</html>
