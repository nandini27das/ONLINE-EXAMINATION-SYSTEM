using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;


namespace ONEXSYS
{
    public partial class exam : System.Web.UI.Page
    {
        public SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        public SqlCommand rcmd;
        public SqlDataReader rdr;

        SqlCommand scmd;

        SqlCommand ccmd;
        SqlDataReader cdr;

        IDictionary<int,string> qry=new Dictionary<int,string>();
        string sql;
        string sqry;
        string uname;
        public string rqry;
        public string testtype;
        public int ans;
        public int n = 0 ;
        public int count;
        public int marks = 0;
        public int tmarks;
        public int c;
        public int id;



        protected void Page_Load(object sender, EventArgs e)
        {
            testtype = System.Convert.ToString(Request.QueryString["testtype"]);
            count = System.Convert.ToInt16(Request.QueryString["count"]);
            marks = System.Convert.ToInt16(Request.QueryString["marks"]);
            //if (count == 0)
            //{
            //    count = 1;
            //}
            Label1.Text = DateTime.Now.ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            //qry = "select * from ques where settype='" + testtype + "' &count=" + count  ;
            sql = "select * from ques where settype='" + testtype + "' order by id";
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                qry.Add(dr.GetInt16(0),dr.GetString(1)) ;
            }
            con.Close();
            if(count <= n)
            {
                Label2.Text = count + "of" + n ;
            }
            else
            {
                Label2.Text = "This was the last question";
            }
            con.Open();
            rqry = "select * from ques where settype='" + testtype + "' order by id";
            /*string a = "select ques from ques where settype='" + testtype + "' AND ID=31"*/
            rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
            rdr = rcmd.ExecuteReader();
            c = 1;
            while (rdr.Read())
            {
                if (c != count)
                {
                    c++;
                }
                else if (c == count)
                {
                    id = Convert.ToInt16(rdr.GetValue(0));
                    c++;
                }
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(count == 1 || count == n)
            {
                Button1.Visible= false;
            }
            else 
            { 
                Button1.Visible= true;
                count--;
                Response.Redirect("exam.aspx?testtype=" + testtype + "&count=" + count);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            if (count < n)
            {
                if (RadioButton4.Checked == true)
                {
                    ans = 1;
                }
                if (RadioButton3.Checked == true)
                {
                    ans = 2;
                }
                if (RadioButton2.Checked == true)
                {
                    ans = 3;
                }
                if (RadioButton1.Checked == true)
                {
                    ans = 4;
                }
                con.Open();
                ccmd =new SqlCommand("select * from ques where id=" + count + "and ans=" + ans , con);
                cdr = ccmd.ExecuteReader();
                if (cdr.HasRows)
                {
                    marks++ ;
                }
                con.Close();
                count++ ;
                Response.Redirect("exam.aspx?testtype=" + testtype + "&count=" +count + "marks=" + marks);
            }
            else
            {
                Label2.Text = "This was last question";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            tmarks = n;
            string date = DateTime.Now.ToString();
            sqry = "insert into result values(" + uname + ", '" + date + "', '" + testtype + "', " + marks + ", " + tmarks + ")";
            scmd = new SqlCommand(sqry, con);
            scmd.ExecuteNonQuery();
            Label2.Text = "Wish you all the best for your result";
            con.Close();
            Response.Write("<script>alert('Exam Successfully Submitted')</script>");
        }
    }
}