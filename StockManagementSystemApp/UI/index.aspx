<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StockManagementSystemApp.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Stock Management</title>
    <style>
        #wrapper {
            margin-left: 35%;
            width: 40%;
        }


        #header {
            background-color: #000000;
            padding: 5px;
        }

            #header h2 {
                color: #FFFFF1;
                font-size: 30px;
                font-family: georgia;
                text-align: center;
                word-spacing: 20px;
            }



        #footer {
            background-color: #000000;
            padding: 2px;
            text-align: center;
        }

            #footer p {
                color: #fff;
            }

        #fieldSet {
            width: -2147483648%;
            background-color: white;
        }

        .topnav {
            width: 99%;
        }


            .topnav a {
                float: left;
                color: black;
                text-align: center;
            }


        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            alignment: center;
        }

        ul {
            list-style-type: none;
            margin-left: 0px;
        }

        li a {
            display: block;
            color: #000;
            padding: 8px 20px;
            text-decoration: none;
        }

        li {
            text-align: center;
        }
    </style>

</head>
<body background="../IMG/BackGround.jpg">
    <div id="wrapper">
        <header>
            <div id="header">
                <h2>Stock Management System</h2>

            </div>
        </header>
        <div align="left" class="menu">
            <form id="form1" runat="server">
                <fieldset id="fieldSet">
                    <div class="topnav">






                        <div style="width: 345px">

                            <ul>

                                <a>


                                    <asp:Button ID="ButtonCategory" class="button" runat="server" Text="Setup Category" OnClick="CategoryButtonClick" Width="339px" />

                                </a>

                                <a>


                                    <asp:Button ID="ButtonCompany" class="button" runat="server" Text="Setup Company" OnClick="ButtonCompany_Click" Width="335px" />

                                </a>

                                <a>


                                    <asp:Button ID="ButtonItem" class="button" runat="server" Text="Setup Item" OnClick="ButtonItem_Click" Width="336px" />

                                </a>

                                <a>

                                    <asp:Button ID="ButtonStockIn" class="button" runat="server" Text="Stock In" OnClick="ButtonStockIn_Click" Width="337px" />

                                </a>


                                <a>

                                    <asp:Button ID="ButtonstockOutQuantity" class="button" runat="server" Text="Stock Out" OnClick="ButtonstockOutQuantity_Click" Width="337px" />

                                </a>

                                <a>

                                    <asp:Button ID="ButtonSearchview" class="button" runat="server" Text="Search View" OnClick="ButtonSearchview_Click" Width="337px" />

                                </a>


                                <a>

                                    <asp:Button ID="viewSellsButton" class="button" runat="server" Text="View Sales " OnClick="viewSellsButton_Click" Width="339px" />

                                </a>


                                <a>

                                    <asp:Button ID="Button1" class="button" runat="server" Text="Logout" OnClick="LogoutClick" Width="338px" />

                                </a>

                            </ul>

                        </div>
                    </div>

                </fieldset>

            </form>
        </div>

        <footer>
            <div id="footer">
                <p>&copy; All Right Reserved By- Team Basis</p>
            </div>
        </footer>
    </div>
</body>
</html>
