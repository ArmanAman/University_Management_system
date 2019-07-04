<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemUI.aspx.cs" Inherits="StockManagementSystemApp.UI.ItemUI" EnableEventValidation="false" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Item</title>
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

        #DropDownCompanyList {
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
                        <asp:Button ID="Button1" runat="server" OnClick="LogoutClick" Text="Log Out"/>
                       
                    </a>

                </div>

                <div>
                    <fieldset id="fieldSet2">
                        <div>
                            <div>
                                <div>
                                    <div>
                                        <div>
                                            <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>

                                            <div>

                                                <asp:DropDownList ID="DropDownCategoryList" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:Label ID="LabelCategpryMessageError" runat="server" Text=""></asp:Label>
                                            </div>
                                            <div>
                                                <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                                                <asp:DropDownList ID="DropDownCompanyList" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                            <div>

                                                <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                                            </div>
                                            <div>

                                                <asp:Label ID="Label5" runat="server" Text="Item Name"></asp:Label>
                                                <div>
                                                    <asp:TextBox ID="TextBoxItemName" class="form-control " runat="server"></asp:TextBox>
                                                    <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div>

                                                <asp:Label ID="Label6" runat="server" Text="Reorder"></asp:Label>
                                                <div>
                                                    <asp:TextBox ID="TextBoxReorder" runat="server" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" Text="0"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div>

                                    <div>

                                        <asp:Button ID="ButtonSave" runat="server" Text="Save" class="btn btn-primary" Width="128px" OnClick="SaveButtonClick" />

                                    </div>

                                </div>
                                <div>
                                    <div>
                                        <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>

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

            $("#ButtonSave").on("click",
                function () {

                    $.validator.addMethod("CheckDropDownCategoryList",
                        function (value, element, param) {
                            if (value == '0')
                                return false;
                            else
                                return true;
                        },
                        "Please select a Category.");

                    $.validator.addMethod("CheckDropDownCompanyList",
                        function (value, element, param) {
                            if (value == '0')
                                return false;
                            else
                                return true;
                        },
                        "Please select a Company");


                    $("#Itemform").validate({
                        rules: {
                            "<%= DropDownCategoryList.UniqueID %>": {
                            CheckDropDownCategoryList: true
                        },

                        "<%= DropDownCompanyList.UniqueID %>": {
                            CheckDropDownCompanyList: true
                        },

                        "<%= TextBoxItemName.UniqueID %>": {
                            required: true
                        },
                    },
                    messages: {
                        //This section we need to place our custom validation message for each control.  
                        "<%= TextBoxItemName.UniqueID %>": {
                            required: "Please enter a Item"

                        },
                    },
                });
            });

    });
</script>
</body>

</html>
