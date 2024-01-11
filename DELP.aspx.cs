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
    public partial class DELP : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
        }

        protected void dpaper_Click(object sender, EventArgs e)
        {
            con.Close();

            con.Open();
            qry = "delete ques where settype ='" + DropDownList1.SelectedValue + "'";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            con.Close();
            Response.Redirect("DELP.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminedit.aspx");
        }
    }
}