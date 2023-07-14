using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.IO;

namespace Home
{
    public partial class admin_panel : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from reportTable", con);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            GridView1.DataSource = dtbl;
            GridView1.DataBind();

            SqlConnection cot = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            cot.Open();
            SqlDataAdapter sqldat = new SqlDataAdapter("select * from register_Table", cot);
            DataTable datbl = new DataTable();
            sqldat.Fill(datbl);
            GridView2.DataSource = datbl;
            GridView2.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string type = DropDownList1.SelectedItem.Value;
            if (username != "" && password != "" && type != "" )
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
                string sql = " Insert into ps_Table values('" + username + "','" + password + "','" + type + "')";
                SqlCommand cmd = new SqlCommand(sql, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("successfully added");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("please insert all data to the fields");

            }
        }
    }
}