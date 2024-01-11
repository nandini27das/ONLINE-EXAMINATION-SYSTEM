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
    public partial class LOG_IN : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        //SqlCommand dr;
        string rqry;
        //public string ADMIN;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ADMIN = System.Convert.ToString(Request.QueryString["ADMIN"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            rqry = "select count(*) from Register where uname='" + TextBox1.Text + "' and passwd='" + TextBox2.Text + "'";
            cmd = new SqlCommand(rqry, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                Response.Write("something went wrong");
            }
            else
            {
                if(ddl1.SelectedValue == ddl1.DataTextField)
                {
                    Response.Redirect("adminedit.aspx");
                }
                else
                {
                    Response.Redirect("category.aspx");
                }
               
               
            }
            //con.Open();
            //string command = "INSERT INTO login (u_id,pass) VALUES(@u_id,@pass)";
            //dr = new SqlCommand(command, con);

            //dr.Parameters.AddWithValue("@u_id", uid.Value);
            //dr.Parameters.AddWithValue("@pass", pass.Value);
            //dr.ExecuteNonQuery();
            //con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HPAGE.aspx");
        }
    }
}