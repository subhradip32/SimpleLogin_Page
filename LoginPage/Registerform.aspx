<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerform.aspx.cs" Inherits="LoginPage.Registerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
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
        .form-group input[type="password"] {
            font-family: 'Arial', sans-serif;
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
        .register-btn {
            background-color: #0066FF;
            color: #ffffff;
        }
        .register-btn:hover {
            background-color: #0056d1;
        }
        .cancel-btn {
            background-color: #FF0000;
            color: #ffffff;
        }
        .cancel-btn:hover {
            background-color: #cc0000;
        }
        .error-message {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="Register_header" runat="server">Registration Form</h1>
        
        <div class="form-group">
            <label for="TextBoxName">Name</label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Name"></asp:TextBox>
            <asp:RequiredFieldValidator 
                runat="server" 
                ErrorMessage="User name Required" 
                ControlToValidate="TextBox1" 
                ForeColor="Red" 
                Display="Dynamic" />
        </div>

        <div class="form-group">
            <label for="TextBoxEmail">Email</label>
            <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Enter your email"></asp:TextBox>
            <asp:RegularExpressionValidator 
                runat="server" 
                ErrorMessage="Email is not valid" 
                ControlToValidate="TextBoxEmail" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
        </div>

        <div class="form-group">
            <label for="TextBoxPassword">Password</label>
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            <asp:RegularExpressionValidator 
                runat="server" 
                ErrorMessage="Password must contain at least 8 characters and one numeric value." 
                ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z]).{8,}$" 
                ControlToValidate="TextBoxPassword" 
                Display="Dynamic" 
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label for="TextBoxConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>
            <asp:CompareValidator 
                runat="server" 
                ErrorMessage="Password must be the same" 
                Display="Dynamic" 
                ForeColor="Red" 
                ControlToCompare="TextBoxPassword" 
                ControlToValidate="TextBoxConfirmPassword" />
        </div>

        <div class="button-group">
            <asp:Button ID="ButtonSubmit" runat="server" CssClass="register-btn" Text="Register" OnClick="SubmitButton_Click" />
            <asp:Button ID="ButtonCancel" runat="server" CssClass="cancel-btn" Text="Cancel" />
        </div>
    </form>
</body>
</html>
