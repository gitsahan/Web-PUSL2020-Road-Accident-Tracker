using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Home
{
    public partial class userprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from register_Table", con);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            GridView1.DataSource = dtbl;
            GridView1.DataBind();
        }

        // update button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand(@"update from register_Table SET[title] ='" + DropDownList1.SelectedItem.Value + "' , [fullname]='" + Textname.Text + "', [username] ='" + Textuser.Text + "' , [password] ='" + Textpassword.Text + "' , [address] ='" + Textaddress.Text + "' , [phone_no] = '" + Textpnumber.Text + "' , [nic] = '" + Textnic.Text + "' , [email] = '" + Textemail.Text + "' , [l_no] = '" + Textlnumber.Text + "' , [t_no] = '" + Texttnumber.Text + "', [vehi_no] = '" + Textvnumber.Text + "' , [year] '" + Textyear.Text + "' , [make] = '" + Textmake.Text + "' , [b_style] ='" + Textbstyle.Text + "' , [modle] ='" + Textmodle.Text + "'", con);
            con.Open();
            Response.Write("update successfully");
            con.Close();

        }

        //Delete button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand(@"DELETE from register_Table where [username] ='" + Textuser.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("deleted successfull");
            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}