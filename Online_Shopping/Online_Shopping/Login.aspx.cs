using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Shopping
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //database connect
        private string connstr =
            System.Web.Configuration.WebConfigurationManager.ConnectionStrings
            ["MyConnection"].ConnectionString;
        private SqlConnection conn;
        private SqlCommand cmd;

        private SqlDataReader rdr;


        protected void showtb_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            cmd = new SqlCommand("select * from Registration", conn);

            System.Data.DataTable dt = new System.Data.DataTable();

            conn.Open();

            rdr = cmd.ExecuteReader();

            if(rdr.HasRows)
            {
                dt.Load(rdr);
                grdMemberView.DataSource = dt;
                grdMemberView.DataBind();
            }
            else
            {
                dt.Load(rdr);
                grdMemberView.DataSource = dt;
                grdMemberView.EmptyDataText = "No members to show";
                grdMemberView.DataBind();
            }

            conn.Close();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            cmd = new SqlCommand("update Registration set Email = @Email, Password = @Password where Reg_Id = @Reg_ID", conn);

            cmd.Parameters.AddWithValue("@Reg_ID", idshow.Text);
            cmd.Parameters.AddWithValue("@Email", tb_logid.Text);
            cmd.Parameters.AddWithValue("@Password", tb_logpwd.Text);

            conn.Open();
            if(cmd.ExecuteNonQuery() ==1)
            {
                login_Msg.Text = "Register is update";
            }
            conn.Close();

        }

        protected void grdMemberView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowIndex = grdMemberView.SelectedIndex;
            tb_logid.Text = grdMemberView.SelectedRow.Cells[4].Text;
            tb_logpwd.Text = grdMemberView.SelectedRow.Cells[8].Text;
            idshow.Text = grdMemberView.SelectedRow.Cells[1].Text;
        }

        protected void Bt_login_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            cmd = new SqlCommand("select * from Registration Where Email ='" + tb_logid.Text + "' and Password = '" + tb_logpwd.Text + "'", conn);

            conn.Open();

            //login
            string intResult;
            intResult = Convert.ToString(cmd.ExecuteScalar());

            if (intResult.Length > 0)
            {
                Response.Redirect("Success_login.aspx");
            }
            else
            {
                login_Msg.Text= "fail to login";
            }
            conn.Close();
        }
    }
}