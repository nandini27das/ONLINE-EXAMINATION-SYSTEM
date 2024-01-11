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
    public partial class edit : System.Web.UI.Page
    {
         SqlConnection con;
         SqlCommand cmd;
         SqlDataReader dr;
         string qry;

        public SqlCommand rcmd;
        public SqlDataReader rdr;
        public string rqry;

        public string settype;
        int id;

        string ans;

        protected void Page_Load(object sender, EventArgs e)
        {
            settype = System.Convert.ToString(Request.QueryString["settype"]);
            id = System.Convert.ToInt16(Request.QueryString["id"]);
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            rqry ="select * from ques where id=" + id;
            rcmd= new SqlCommand(rqry,con);
            rdr = rcmd.ExecuteReader();
            while (rdr.Read())
            {
                quest.Text = Convert.ToString(rdr.GetValue(1));
                opt1.Text = Convert.ToString(rdr.GetValue(3));
                opt2.Text = Convert.ToString(rdr.GetValue(4));
                opt3.Text = Convert.ToString(rdr.GetValue(5));
                opt4.Text = Convert.ToString(rdr.GetValue(6));
                ans = Convert.ToString(rdr.GetValue(7));
                if (ans == opt1.Text)
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;
                }
                if (ans == opt2.Text)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = true;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;
                }
                if (ans == opt3.Text)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = true;
                    RadioButton4.Checked = false;
                }
                if (ans == opt4.Text)
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = true;
                }
            }
            con.Close();

        }

        protected void Del_Click(object sender, EventArgs e)
        {
            con.Open();
            qry = "delete ques where id =" + id;
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("preview.aspx?settype =" + settype);
        }

        protected void Update_Click1(object sender, EventArgs e)
        {

            if (RadioButton1.Checked == true)
            {
                ans = opt1.Text;
            }

            if (RadioButton2.Checked == true)
            {
                ans = opt2.Text;
            }

            if (RadioButton3.Checked == true)
            {
                ans = opt3.Text;
            }

            if (RadioButton4.Checked == true)
            {
                ans = opt4.Text;
            }
            con.Open();
            qry = "update ques set optd='" + opt4.Text + "' where id =" + id;
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write(id);
            //Response.Write(opt4.Text);
        }
    }
}