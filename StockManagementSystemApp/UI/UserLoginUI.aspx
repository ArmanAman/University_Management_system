<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoginUI.aspx.cs" Inherits="StockManagementSystemApp.UI.UserLoginUI" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        #button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        #loginForm {
            width: 30%;
            margin-left: 40%;
        }



        #container {
            padding: 20px;
            width: 90%;
        }
    </style>

</head>

<body background="../IMG/BackGround.jpg">



    <form id="loginForm" runat="server">
        <h2 align="center">Login</h2>

        <div>

            <div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                    <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>

                </div>
            </div>
            <div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBoxPassword" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
            </div>
            <div>
                <asp:Label ID="loginMessage" runat="server" Text=""></asp:Label>
            </div>
            <asp:Button ID="button" runat="server" Text="Login" OnClick="ButtonLogin" />


        </div>

    </form>

</body>
</html>
