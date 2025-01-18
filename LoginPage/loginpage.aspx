<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="LoginPage.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        #form1 {
            width: 300px;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        #form1 h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button-group {
            text-align: center;
        }
        .button-group button {
            width: 100px;
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-btn {
            background-color: #0066FF;
            color: #ffffff;
        }
        .cancel-btn {
            background-color: #FF0000;
            color: #ffffff;
        }
        .login-btn:hover {
            background-color: #0056d1;
        }
        .cancel-btn:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="Login_header" runat="server">Login Form</h1>
        <div class="form-group">
            <label for="TextBox1">Username</label>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <asp:Label ID="user_error" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div class="form-group">
            <label for="TextBox2">Password</label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="pass_error" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div class="button-group">
            <asp:Button ID="Button1" runat="server" CssClass="login-btn" Text="Login" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="cancel-btn" Text="Cancel" />
        </div>
    </form>
</body>
</html>
