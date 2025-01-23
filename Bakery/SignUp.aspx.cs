using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Windows.Forms;
namespace Bakery
{
    
    public partial class Signup : Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
            
        {
            if (!IsPostBack)
            {
                //fnconnect();
            }
            // This is where any logic can be added to initialize the page.
        }

       public void fnconnect()
        {
            string strConn = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            conn = new SqlConnection(strConn);
            if(conn.State != ConnectionState.Open)
            {
                conn.Open();
                Response.Write("connected \n");
                conn.Close();
            }
            else
            {
                Response.Write("Already Connected");
            }
           
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //// Capture the values entered by the user
            //string username = txtUsername.Text.Trim();
            //string email = txtEmail.Text.Trim();
            //string password = txtPassword.Text.Trim();
            //string confirmPassword = txtConfirmPassword.Text.Trim();

            //// Validate the input
            //if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) ||
            //    string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            //{
            //    lblErrorMessage.Text = "All fields are required.";
            //    return;
            //}

            //if (password != confirmPassword)
            //{
            //    lblErrorMessage.Text = "Passwords do not match.";
            //    return;
            //}

            //// Ideally, add additional validation for email format, password strength, etc.
            //if (!IsValidEmail(email))
            //{
            //    lblErrorMessage.Text = "Please enter a valid email address.";
            //    return;
            //}

            //// Assuming you have a method to store the user data in the database.
            //bool isUserCreated = CreateUser(username, email, password);

            //if (isUserCreated)
            //{
            //    // Redirect to a success page or login page after successful signup
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
            //    lblErrorMessage.Text = "An error occurred while creating your account. Please try again.";
            //}
            fnAddDataIntoTable();

        }


        public void fnAddDataIntoTable()
        {
            fnconnect();
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            
            string query = "Insert into SignUpTable values(@userName,@email,@password)";
            SqlCommand cmd = new SqlCommand(query,conn);

            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue ("password", password);
            conn.Open();
            int count = cmd.ExecuteNonQuery();
            conn.Close();
            if (count > 0)
            {
                Response.Write("Inserted succesfully");
            }
            else
            {
                Response.Write("Not Inserted");
            }

            
        }

        // Helper method to validate email format
        //private bool IsValidEmail(string email)
        //{
        //    try
        //    {
        //        var mailAddress = new System.Net.Mail.MailAddress(email);
        //        return mailAddress.Address == email;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}

        // Dummy method to simulate user creation logic
        //private bool CreateUser(string username, string email, string password)
        //{
        //    // Simulate user creation logic (e.g., save to database)
        //    // For now, it always returns true for demonstration purposes.
        //    return true;
        //}
    }
}
