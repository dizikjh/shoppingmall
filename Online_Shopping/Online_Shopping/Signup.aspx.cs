using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Shopping
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string connstr =
            System.Web.Configuration.WebConfigurationManager.ConnectionStrings
            ["MyConnection"].ConnectionString;
        private SqlConnection conn;
        private SqlCommand cmd;

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            cmd = new SqlCommand("Insert into Register( Name, Email, Password ) values( @Name, @Email, @Password)", conn);

            cmd.Parameters.AddWithValue("@Name", TB_id.Text);
            cmd.Parameters.AddWithValue("@Password", TB_pwd.Text);
            cmd.Parameters.AddWithValue("@Email", TB_email.Text);

            conn.Open();
            if (cmd.ExecuteNonQuery() == 1)
            {
                lblMsg.Text = "User is added!";

                TB_id.Text = "";
                TB_email.Text = "";
            }
            conn.Close();
        }
    }
}