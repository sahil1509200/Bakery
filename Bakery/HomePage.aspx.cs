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
    
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection conn;
        string strconn = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getProduct();
            }
        }
        public void getProduct()
        {
                conn = new SqlConnection(strconn);
                string query = "SELECT p_name, p_img FROM product";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                productReader.DataSource = reader;
                productReader.DataBind();
                conn.Close();
            
        }
    }
}