<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Bakery.Signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Page</title>
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
            /* Semi-transparent white background */
            padding: 20px;
            border-radius: 8px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color:white
        }

        a{
    color:lightcoral;
}

        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color:white
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
            width: 300px;
            border-radius: 4px;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            text-align: center;
        }
        .form-control{
            opacity :0.5;
        }
        #signupForm {
            width: 500px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #ErrorLogin{
            color:white
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Signup</h2>
        <form id="signupForm" runat="server">
            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" CssClass="btn-submit" OnClick="btnSubmit_Click" />
            </div>
            <div class="error-message">
                <asp:Label ID="messageLabel" runat="server" ForeColor="Red"></asp:Label>
            </div>
             <div id="ErrorLogin">
     <asp:Literal ID="LogInLink" runat="server" Visible="true" Text="Already have Account <a href='LogIn.aspx'>login</a>"></asp:Literal>
 </div>
        </form>
    </div>
</body>
</html>
