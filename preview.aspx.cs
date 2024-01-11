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
    public partial class preview : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string qry;
        public string ans;
        public string settype;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            settype = System.Convert.ToString(Request.QueryString["settype"]);
            HiddenField1.Value = Testlist.SelectedValue;
            qry ="select * from ques where settype ='" + HiddenField1.Value +"' order by ID";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SETP.aspx");
        }

        protected void Testlist_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminedit.aspx");
        }
    }
}