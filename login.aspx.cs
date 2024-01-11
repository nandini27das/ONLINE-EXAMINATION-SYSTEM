using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ONEXSYS
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        //SqlCommand dr;
        string rqry;
        public string ADMIN;
        protected void Page_Load(object sender, EventArgs e)
        {

            ADMIN = System.Convert.ToString(Request.QueryString["ADMIN"]);
        }

        protected void log_ServerClick(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            rqry = "select count(*) from Register where uname='" + uid.Value + "' and passwd='" + pass.Value + "'";
            cmd = new SqlCommand(rqry, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
                
            if (temp == 1)
            {
               //if (uid.Value == "ADMIN")
               //{
                   Response.Redirect("adminedit.aspx?ADMIN=" + ADMIN);
            //   }
            //   else
            //   {
            //       Response.Redirect("category.aspx");
            //   }
            }
            else
            {
                    Response.Redirect("category.aspx");
            }
            //con.Open();
            //string command = "INSERT INTO login (u_id,pass) VALUES(@u_id,@pass)";
            //dr = new SqlCommand(command, con);

            //dr.Parameters.AddWithValue("@u_id", uid.Value);
            //dr.Parameters.AddWithValue("@pass", pass.Value);
            //dr.ExecuteNonQuery();
            //con.Close();
        }
    }
}