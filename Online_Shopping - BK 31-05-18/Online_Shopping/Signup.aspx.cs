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
            cmd = new SqlCommand("Insert into Registration( Fname, Lname, Email, Address, Region, Gender, Password,Active_Status) values( @Fname, @Lname, @Email, @Address, @Region, @Gender, @Password, @Active_Status)", conn);

            cmd.Parameters.AddWithValue("@Fname", tb_fname.Text);
            cmd.Parameters.AddWithValue("@Lname", tb_lname.Text);
            cmd.Parameters.AddWithValue("@Email", tb_email.Text);
            cmd.Parameters.AddWithValue("@Address", tb_address.Text);
            cmd.Parameters.AddWithValue("@Region", tb_region.Text);
            cmd.Parameters.AddWithValue("@Gender", r_label.Text);
            cmd.Parameters.AddWithValue("@Password", tb_pwd.Text);
            cmd.Parameters.AddWithValue("@Active_Status", '0');

            conn.Open();
            if (cmd.ExecuteNonQuery() == 1)
            {
                lblMsg.Text = "User is added!";

                tb_fname.Text = "";
                tb_email.Text = "";
            }
            conn.Close();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (male.Checked)
            {
                r_label.Text = "1"; // male
            }
            else{
                r_label.Text = "2"; // female

            }
        }
    }
}