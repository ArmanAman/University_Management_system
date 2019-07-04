<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUI.aspx.cs" Inherits="StockManagementSystemApp.UI.UpdateUI" %>

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

        #ButtonUpdate {
            border-style: none;
            border-color: black;
            border-width: medium;
            background-color: lightblue;
            color: black;
            padding: 10px 10px;
            margin: 0 20px 0 125px;
            cursor: pointer;
        }

        #TextBoxName {
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


            <div class="topnav">
                <a href="CategoryUI.aspx">
                    <span>Category</span>
                </a>
            </div>
            <fieldset>
                <div>
                    <label for="inputUserName">Category Name</label>
                    <asp:TextBox class="form-control" ID="TextBoxCategoryName" runat="server"></asp:TextBox>
                    <asp:Label ID="messagelevel" runat="server" Text=""></asp:Label>
                </div>



                <div>
                    <asp:Button ID="ButtonUpdate" runat="server" Text="Update" Width="128px" OnClick="ButtonUpdate_Click" />
                </div>
            </fieldset>
    </fieldset>

    </form>
</body>
</html>
