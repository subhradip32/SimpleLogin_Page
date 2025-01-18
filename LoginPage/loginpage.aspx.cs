using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 

namespace LoginPage
{
    public partial class loginpage : System.Web.UI.Page
    {
        string username = "root", password = "1234"; 
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length <= 0)
            {
                user_error.Text = "User should not be empty";
            }else {
                user_error.Text = ""; 
            }

            if (TextBox2.Text.Length <= 0)
            {
                pass_error.Text = "Password should not be empty";
            }
            else
            {
                pass_error.Text = ""; 
            }

            if(TextBox1.Text.Length > 0 && TextBox1.Text == username && TextBox2.Text.Length > 0 && TextBox2.Text == password)
            {
                // login Sucessfull 
                Login_header.InnerText = "Login Sucessfull";
                Login_header.Style["color"] = "green"; 
            }
            else
            {
                Login_header.InnerText = "Login Form";
                Login_header.Style["color"] = "black"; 
            }
            
        }

        
    }
}