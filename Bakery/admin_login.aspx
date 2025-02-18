﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Bakery.admin_login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 0;
            margin: 0;
            background-image: url('images/bg_1.jpg'); /* Add your image URL here */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Ensure the background image covers the full viewport */
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 8px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .form-control {
            opacity: 0.5;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: white;
        }
        input {
            width: 283px;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn-submit {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            width: 300px;
            border-radius: 4px;
        }
        .btn-submit:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            text-align: center;
        }
        #loginForm {
            width: 500px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #ErrorSign {
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form id="loginForm" runat="server">
            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="usernameTextBox" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn-submit" OnClick="loginButton_Click" />
            </div>
            <div class="error-message">
                <asp:Label ID="messageLabel" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
