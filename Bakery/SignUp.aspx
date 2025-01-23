
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Bakery.Signup" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Page</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; background-color: #f4f4f4; }
        .container { max-width: 400px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        h2 { text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; font-weight: bold; }
        .form-group input { width: 100%; padding: 8px; font-size: 14px; }
        .btn-submit { background-color: #4CAF50; color: white; padding: 10px 20px; border: none; cursor: pointer; width: 100%; }
        .btn-submit:hover { background-color: #45a049; }
        .error-message { color: red; }
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
            </div>
        </form>
    </div>
</body>
</html>


