<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome_screen.aspx.cs" Inherits="Bakery.welcome_screen" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 0;
            margin: 0;
            background-image: url('images/bg_1.jpg'); /* Add your image URL here */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Ensure the background image covers the full viewport */
            display: flex;
            justify-content: center;
            align-items: center;
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
            background: rgba(255, 255, 255, 0.2);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            width: 300px;
            padding: 10px;
            margin: 10px;
            border-radius: 4px;
            text-align: center;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Welcome</h2>
            <asp:Button ID="btnUserLogin" runat="server" Text="Login as User" CssClass="btn" OnClick="btnUserLogin_Click"  />
            <asp:Button ID="btnAdminLogin" runat="server" Text="Login as Admin" CssClass="btn" OnClick="btnAdminLogin_Click"  />
        </div>
    </form>
</body>
</html>