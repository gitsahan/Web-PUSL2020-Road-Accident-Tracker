using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); 
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin_Table where ad_username='" + TextBox1.Text.Trim() + "' AND ad_password = '" + TextBox2.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Redirect("admin_panel.aspx");
                    }
                }
                else
                {
                    Response.Write("<scrpit>alert('invalid credentials');</scrpit>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<scrpit>alert('"+ex.Message+"');</scrpit>");
            }
        }

        
    }
}