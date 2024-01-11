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
    public partial class report : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            qry ="select * from result";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
        }
    }
}