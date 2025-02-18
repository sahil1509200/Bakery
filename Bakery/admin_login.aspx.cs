using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;

            // Call the method to authenticate the user
            if (AuthenticateUser(username, password))
            {
                // Redirect to another page if login is successful
                Response.Redirect("admin_homeScreen.aspx");
            }
            else
            {
                // Check if username exists in the SignUpTable
                if (CheckIfUserExists(username))
                {
                    // Show message to guide the user to sign up or try again
                    messageLabel.Text = "Invalid password. Please try again.";
                }
                else
                {
                   
                }
            }
        }


        private bool AuthenticateUser(string username, string password)
        {
            bool isAuthenticated = false;

            // SQL query to check for username and password in SignUpTable
            string query = "SELECT COUNT(*) FROM adminSignUp WHERE User_Name = @Username AND password = @Password";

            // Use 'using' to ensure connection is closed and disposed properly
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to avoid SQL injection
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        // Open the connection and execute the query
                        conn.Open();
                        int userCount = (int)cmd.ExecuteScalar();

                        // If userCount is greater than 0, then credentials are correct
                        if (userCount > 0)
                        {
                            isAuthenticated = true;
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors (e.g., database connection issues)
                        messageLabel.Text = "Error: " + ex.Message;
                    }
                }
            }

            return isAuthenticated;
        }

        private bool CheckIfUserExists(string username)
        {
            bool userExists = false;

            // SQL query to check if the username exists
            string query = "SELECT COUNT(*) FROM adminSignUp WHERE User_Name = @Username";

            // Use 'using' to ensure connection is closed and disposed properly
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameter to avoid SQL injection
                    cmd.Parameters.AddWithValue("@Username", username);

                    try
                    {
                        // Open the connection and execute the query
                        conn.Open();
                        int userCount = (int)cmd.ExecuteScalar();

                        // If userCount is greater than 0, then the username exists
                        if (userCount > 0)
                        {
                            userExists = true;
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors (e.g., database connection issues)
                        messageLabel.Text = "Error: " + ex.Message;
                    }
                }
            }

            return userExists;
        }


    }
}