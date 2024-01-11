using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ONEXSYS
{
    public partial class regist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string command = "INSERT INTO Register(uname,email,u_id,passwd) VALUES(@uname,@email,@u_id,@passwd)";
                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@uname",name.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@u_id", uid.Text);
                cmd.Parameters.AddWithValue("@passwd", pass.Text);

                cmd.ExecuteNonQuery();

                Label1.Visible = true;
            }
            catch(Exception)
            {
                Label1.Text = "Something goes wrong...";
                throw;
            }
            finally
            {
              con.Close();
            }
        }
    }
}