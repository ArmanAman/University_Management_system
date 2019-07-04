<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementSystemApp.UI.StockInUI" EnableEventValidation="false" %>



<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock In</title>
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

        #TextBoxReorderLevel {
            width: 260px;
            padding: 8px 30px;
            margin-left: 50px;
            margin-top: 10px;
            background-color: whitesmoke;
        }

        #TextBoxStockIn {
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
    </style>

</head>

<body background="../IMG/BackGround.jpg">
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

                                    <asp:DropDownList ID="DropDownCompanyList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownCompanyList_SelectedIndexChanged" Width="330px"></asp:DropDownList>
                                    <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label3" class="col-sm-3 col-form-label" runat="server" Text="Item"></asp:Label>

                                    <div>
                                        <div>
                                            <asp:DropDownList ID="DropDownItemList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropdownItemSelectedIndexChange" Width="323px"></asp:DropDownList>
                                            <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                                        </div>


                                        <div>

                                            <asp:Label ID="Label7" runat="server" Text="Reorder Level"></asp:Label>
                                            <div>

                                                <asp:TextBox ID="TextBoxReorderLevel" runat="server" ReadOnly="True"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                            </div>
                            <div>
                            </div>
                            <div>
                                <asp:Label ID="Label4" runat="server" Text="AvailableQuantity"></asp:Label>

                                <div>
                                    <asp:TextBox ID="TextBoxAvailableQuantity" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>


                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label5" class="col-sm-3 col-form-label" runat="server" Text="Stock In Quantity"></asp:Label>
                                <div>
                                    <asp:TextBox ID="TextBoxStockIn" class="form-control" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelStockInMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="ButtonSave" Width="335px" runat="server" Text="Save" OnClick="SaveButtonStockIn" />
                            </div>
                            <div>
                                <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </fieldset>


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


                    $("#StockinForm").validate({
                        rules: {
                            "<%= DropDownCompanyList.UniqueID %>": {
                            CheckDownCompanyList: true
                        },

                        "<%= DropDownItemList.UniqueID %>": {
                            CheckDropDownItemList: true
                        },

                        "<%= TextBoxStockIn.UniqueID %>": {
                            required: true
                        },
                    },
                    messages: {
                        "<%= TextBoxStockIn.UniqueID %>": {
                            required: "Please Fill Stock in Quantity"

                        },
                    },
                });

            });
    });
</script>
</body>

</html>
