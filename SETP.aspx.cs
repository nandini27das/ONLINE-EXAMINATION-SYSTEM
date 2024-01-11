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
    public partial class SETP : System.Web.UI.Page
    {
        //SqlConnection con;
        //SqlCommand cmd;


        //SqlCommand rcmd;
        //SqlDataReader rdr;

        //SqlCommand qcmd;
        //SqlDataReader qdr;

        //string qry;
        //string nqry;
        string test;
        string ans;
        int flag = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            //conn = new SqlConnection("Data Source=.;AttachDbFilename=|DataDirectory|\\ques.mdf;Integrated Security=True");
            //Label7.Text= Request.QueryString["msg"];
        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
            msg1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            Label7.Text = "";

            if (RadioButton1.Checked)
                ans=opt1.Text;
            if (RadioButton2.Checked)
                ans = opt2.Text;
            if (RadioButton3.Checked)
                ans = opt3.Text;
            if (RadioButton4.Checked)
                ans = opt4.Text;

            if (testlist.Visible)
            {
                test = testlist.Text;
            }
            else
            {
                if (testname.Text == "")
                {
                    msg1.Text = "Enter the category";
                    flag = 0;
                }
                //else
                //{
                //    con.Open();
                //    nqry = "select * from ques where settype='" + testname.Text + "'";
                //    rcmd = new SqlCommand(nqry, con);
                //    rdr = rcmd.ExecuteReader();
                //    test = testname.Text;
                //    con.Close();
                    
                //}
            }

            if (quest.Text == "" || quest.Text == " ")
            {
                Label2.Text = "Enter the question";
                flag = 0;
            }

            if (opt1.Text == "" || opt1.Text == " ")
            {
                Label4.Text = "Enter the option 1";
                flag = 0;
            }

            if (opt2.Text == "" || opt2.Text == " ")
            {
                Label5.Text = "Enter the option 2";
                flag = 0;
            }

            if (opt3.Text == "" || opt3.Text == " ")
            {
                Label6.Text = "Enter the option 3";
                flag = 0;
            }

            if (opt4.Text == "" || opt4.Text == " ")
            {
                Label7.Text = "Enter the option 4";
                flag = 0;
            }
            if (flag != 0)
            {
                //con.Open();
                //qcmd = new SqlCommand("select MAX(q_id) from ques", con);
                //qdr= qcmd.ExecuteReader();
                //qdr.Read();

                //if (qdr.IsDBNull(0))
                //{
                //    q_id = 1;
                //}
                //else
                //{
                //    q_id = Convert.ToInt16(qdr.GetValue(0)) + 1;
                //}
                //con.Close();



                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                //try
                //{
                    con.Open();
                    string command = "INSERT INTO ques(ques,settype,opta,optb,optc,optd,ans) VALUES(@ques,@settype,@opta,@optb,@optc,@optd,@ans)";
                    SqlCommand cmd = new SqlCommand(command, con);

                    cmd.Parameters.AddWithValue("@ques", quest.Text);
                    cmd.Parameters.AddWithValue("@opta", opt1.Text);
                    cmd.Parameters.AddWithValue("@optb", opt2.Text);
                    cmd.Parameters.AddWithValue("@optc", opt3.Text);
                    cmd.Parameters.AddWithValue("@optd", opt4.Text);
                    cmd.Parameters.AddWithValue("@ans", ans);
                    cmd.Parameters.AddWithValue("@settype",testname.Text);
                    cmd.ExecuteNonQuery();
                    Label3.Visible = true;
                    con.Close();
                
            }

        }

        protected void Ntest_Click1(object sender, EventArgs e)
        {

            if (testlist.Visible)
            {
                testlist.Visible = false;
                testname.Visible = true;
                Ntest.Text = "Old Test";
            }
            else
            {
                testlist.Visible = true;
                testname.Visible = false;
                Ntest.Text = "New Test";
            }
        }
        protected void Back_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminedit.aspx");
        }
    }
}