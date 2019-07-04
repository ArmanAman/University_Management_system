<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementSystemApp.UI.StockOutUI" EnableEventValidation="false" %>


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

        #ButtonSave {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #ButtonSellId {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #DamageButton {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #LostButton {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #TextBoxReorderLevel {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #TextBoxStockOut {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #TextBoxAvailableQuantity {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #DropDownItemList {
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #DropDownCompanyList {
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


        .table-striped {            margin-left: 0px;
            margin-right: 3px;
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
                <fieldset id="fieldSet2">

                    <div>
                        <div>
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>

                                <div>

                                    <asp:DropDownList ID="DropDownCompanyList" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropdownCompanySelectedIndexChanged" AutoPostBack="True" Width="319px"></asp:DropDownList>
                                    <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label6" class="col-sm-3 col-form-label" runat="server" Text="Item"></asp:Label>

                                    <div>
                                        <div>
                                            <asp:DropDownList ID="DropDownItemList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDwonItemSelectedIndexChanged" Width="322px"></asp:DropDownList>
                                            <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                                        </div>


                                        <div>

                                            <asp:Label ID="Label3" class="col-sm-3 col-form-label" runat="server" Text="ReorderLevel"></asp:Label>
                                            <div>

                                                <asp:TextBox ID="TextBoxReorderLevel" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div>
                                <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="AvailableQuantity"></asp:Label>

                                <div>
                                    <asp:TextBox ID="TextBoxAvailableQuantity" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>


                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label4" class="col-sm-3 col-form-label" runat="server" Text="Stock Out Quantity"></asp:Label>
                                <div>
                                    <asp:TextBox ID="TextBoxStockOut" class="form-control" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelStockInMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="ButtonSave" runat="server" Text="Add" class="btn btn-primary" Width="332px" OnClick="SaveButtonStockOut" />
                            </div>
                            <div>
                                <asp:Label ID="Label5" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>


                    <div>

                        <div>
                            <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                        </div>


                        <asp:GridView ID="GridViewStockOutList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="585px">
                            <Columns>

                                <asp:TemplateField>
                                    <HeaderTemplate>Serial No.</HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Item">
                                    <ItemTemplate>
                                        <asp:Label ID="ItemName" runat="server" Text='<%# Eval("Item") %>'></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                                    <ItemTemplate>
                                        <asp:Label ID="idItemHiddenField" runat="server" Text='<%#Eval("Itemid") %>'></asp:Label>

                                    </ItemTemplate>

                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>

                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Company">
                                    <ItemTemplate>

                                        <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("Company") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>

                                <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                                    <ItemTemplate>
                                        <asp:Label ID="idCompanyHiddenField" runat="server" Text='<%#Eval("Companyid") %>'></asp:Label>

                                    </ItemTemplate>

                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>

                                </asp:TemplateField>


                                <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                                    <ItemTemplate>
                                        <asp:Label ID="idHiddenAvailquantity" runat="server" Text='<%#Eval("Availablequantity") %>'></asp:Label>

                                    </ItemTemplate>

                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>

                                </asp:TemplateField>


                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>




                    </div>
                </fieldset>
                <div>
                    <asp:Button ID="ButtonSellId" runat="server" Text="Sell" Visible="False" OnClick="sellButtonClick" Width="140px" />
                    <asp:Button ID="DamageButton" runat="server" OnClick="DamageButtonClick" Text="Damage" Visible="False" Width="140px" />

                    <asp:Button ID="LostButton" runat="server" OnClick="LostButtonClick" Text="Lost" Visible="False" Width="140px" />
                </div>
            </fieldset>

        </form>
    </fieldset>
    <script>
        $(document).ready(function () {
            $("#ButtonSave").on("click",
                function () {
                    //custom validation rule for Dropdown List  
                    $.validator.addMethod("CheckDownCompanyList",
                        function (value, element, param) {
                            if (value == '0')
                                return false;
                            else
                                return true;
                        },
                        "Please select a Company.");

                    $.validator.addMethod("CheckDropDownItemList",
                        function (value, element, param) {
                            if (value == '0')
                                return false;
                            else
                                return true;
                        },
                        "Please select a Item");


                    $("#stockOutFrom").validate({
                        rules: {
                            "<%= DropDownCompanyList.UniqueID %>": {
                                CheckDownCompanyList: true
                            },

                            "<%= DropDownItemList.UniqueID %>": {
                                CheckDropDownItemList: true
                            },
                            "<%= TextBoxStockOut.UniqueID %>": {
                                required: true
                            },


                        },
                        messages: {
                            "<%= TextBoxStockOut.UniqueID %>": {
                            required: "Please enter Stock Out Quantity"

                        },
                    },
                    });

                });
        });
</script>
</body>

</html>
